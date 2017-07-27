package ru.jblab.friendlymoney.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import ru.jblab.friendlymoney.model.Product;
import ru.jblab.friendlymoney.service.ProductService;

import java.text.SimpleDateFormat;
import java.util.List;

import static java.lang.Math.toIntExact;

@Component
public class ScheduledTasks {

    private static final Logger log = LoggerFactory.getLogger(ScheduledTasks.class);
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    private final int GET_COUNT = 1000;
//    private final Integer DELAY_RATE = ;/*604800000*/ //именно столько миллисекунд в неделе

    private final ProductService productService;
    private final ServerUtil serverUtil;

    @Autowired
    public ScheduledTasks(ProductService productService, ServerUtil serverUtil) {
        this.productService = productService;
        this.serverUtil = serverUtil;
    }

    @Scheduled(fixedRate = 8640000)
    public void updateProductDataBase() {
        log.info("----------------------------");
        log.info("Product table is now being updated");
        log.info("----------------------------");
        Pageable pageable = getProperPageble();
        List<Product> newProductList;
        if (pageable != null) {
            List<Product> deleteProductList = productService.getAllFirstByCounter(pageable);
            int listCount = deleteProductList.size();
            newProductList = serverUtil.getAllFromServer(listCount);
            log.info("delete count is " + listCount);
            log.info("-------------------------");
            for (Product product : deleteProductList) {
                productService.remove(product);
                log.info(product.getName() + " successfully deleted");
            }
        } else {
            newProductList = serverUtil.getAllFromServer(GET_COUNT);
        }
        log.info("upload count is " + newProductList.size());
        for (Product product : newProductList) {
            productService.add(product);
        }
        log.info("Product table updated successfully");
    }

    private Pageable getProperPageble() {
        Long count = productService.countAll();
        int pageCount = toIntExact(count / 5);
        if (pageCount == 0) {
            return null;
        }
        return new PageRequest(0, pageCount);
    }
}

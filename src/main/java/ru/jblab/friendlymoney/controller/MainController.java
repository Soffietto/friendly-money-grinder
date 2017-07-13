package ru.jblab.friendlymoney.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.jblab.friendlymoney.model.Product;
import ru.jblab.friendlymoney.service.ProductService;
import ru.jblab.friendlymoney.util.ServerUtil;

@Controller
public class MainController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    private final ProductService productService;

    @Autowired
    public MainController(ProductService productService, Environment env, ServerUtil serverUtil) {
        this.productService = productService;
    }

    @RequestMapping("/products")
    public String getProductsPage(){
        return "products";
    }

    @RequestMapping("/home")
    public String getHomePage(){
        return "home";
    }

    @RequestMapping("/products/{product_id}")
    public String getSinglePage(@PathVariable(name = "product_id") Long id){
        Product product = productService.findOneById(id);
        Long counter = product.getCounter();
        logger.info("counter = " + counter);
        product.setCounter(++counter);
        productService.add(product);
        logger.warn("ADDED SUCCESSFULLY");
        return "single";
    }
}

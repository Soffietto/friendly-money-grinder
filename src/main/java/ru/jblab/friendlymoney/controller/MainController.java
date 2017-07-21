package ru.jblab.friendlymoney.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.jblab.friendlymoney.model.Product;
import ru.jblab.friendlymoney.service.ProductService;
import ru.jblab.friendlymoney.util.ServerUtil;

import java.util.*;

@Controller
public class MainController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    private final ProductService productService;

    @Autowired
    public MainController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/")
    public String getProductsPage(@RequestParam(value = "search", required = false) String namePart, Model model) {
        List<Product> productList = productService.getAll();
        Map<String, String> categories = new HashMap<>();
        for (Product product : productList) {
            String category = product.getCategory();
            String readableCategory = product.getReadableCategory();
            if (category != null && readableCategory != null)
                categories.put(category, readableCategory);
        }
        if (categories.size() != 0) {
            model.addAttribute("categories", categories);
        } else {
            model.addAttribute("categories", null);
        }
        if(namePart == null){
            model.addAttribute("products", productList);
        }else {
            List<Product> namePartList = productService.getAllByNamePart(namePart);
            model.addAttribute("products", namePartList);
        }
        return "products";
    }

    @RequestMapping("/products/{readable_category}/{readable_name}")
    public String getSinglePage(@PathVariable(name = "readable_name") String readableName, Model model) {
        Product product = productService.getByReadableName(readableName);
        List<String> productImgs = product.getImgUrls();
        Map<String, String> params = product.getParams();
        model.addAttribute("imgUrls", productImgs);
        Long counter = product.getCounter();
        logger.info("counter = " + counter);
        product.setCounter(++counter);
        logger.info("new counter = " + product.getCounter());
        productService.add(product);
        logger.warn("ADDED SUCCESSFULLY");
        List<Product> productList = productService.getRandomProducts();
        model.addAttribute("product", product);
        model.addAttribute("products", productList);
        model.addAttribute("params", params);
        return "single";
    }

    @RequestMapping("/{readable_category}")
    public String getCategoryPage(@PathVariable(name = "readable_category") String readableCategory, Model model) {
        List<Product> productList = productService.findAllByReadableCategory(readableCategory);
        List<Product> allProductList = productService.getAll();
        Map<String, String> categories = new HashMap<>();
        for (Product product : allProductList) {
            String cat = product.getCategory();
            String allReadableCategories = product.getReadableCategory();
            if (cat != null && allReadableCategories != null)
                categories.put(cat, allReadableCategories);
        }
        if (categories.size() != 0) {
            model.addAttribute("categories", categories);
        } else {
            model.addAttribute("categories", null);
        }
        model.addAttribute("products", productList);
        return "products";
    }
}

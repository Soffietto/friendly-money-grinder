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
import ru.jblab.friendlymoney.model.Product;
import ru.jblab.friendlymoney.service.ProductService;
import ru.jblab.friendlymoney.util.ServerUtil;

import java.util.List;

@Controller
public class MainController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    private final ProductService productService;

    @Autowired
    public MainController(ProductService productService, Environment env, ServerUtil serverUtil) {
        this.productService = productService;
    }

    @RequestMapping("/products")
    public String getProductsPage(Model model){
        List<Product> productList = productService.getAll();
        model.addAttribute("products", productList);
        return "products";
    }

    @RequestMapping("/home")
    public String getHomePage(){
        return "home";
    }

    @RequestMapping("/products/{product_id}")
    public String getSinglePage(@PathVariable(name = "product_id") Long id, Model model){
        Product product = productService.findOneById(id);
        Long counter = product.getCounter();
        logger.info("counter = " + counter);
        product.setCounter(++counter);
        productService.add(product);
        logger.warn("ADDED SUCCESSFULLY");
        List<Product> productList = productService.getAllTopByCounter(new PageRequest(0,3));
        model.addAttribute("product", product);
        model.addAttribute("products", productList);
        return "single";
    }
}

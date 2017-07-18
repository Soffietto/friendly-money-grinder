package ru.jblab.friendlymoney.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import ru.jblab.friendlymoney.model.Product;
import ru.jblab.friendlymoney.repository.ProductRepository;
import ru.jblab.friendlymoney.service.ProductService;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import static java.lang.Math.toIntExact;

@Service
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;

    @Autowired
    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public void add(Product product) {
        productRepository.save(product);
    }

    @Override
    public Product findOneById(Long id) {
        return productRepository.findOne(id);
    }

    @Override
    public void remove(Long id) {
        productRepository.delete(id);
    }

    @Override
    public void remove(Product product) {
        productRepository.delete(product);
    }

    @Override
    public List<Product> getAll() {
        return (List<Product>) productRepository.findAll();
    }

    @Override
    public Long countAll() {
        return productRepository.count();
    }

    @Override
    public List<Product> getAllFirstByCounter(Pageable pageable) {
        return productRepository.findAllFirstByCounter(pageable);
    }

    @Override
    public List<Product> getAllByCategory(String category) {
        return productRepository.findAllByCategory(category);
    }

    @Override
    public List<Product> getRandomProducts() {
        Long count = productRepository.count();
        if (count > 3) {
            count/=3;
            int index = (int) (Math.random() * (toIntExact(count)));
            Page<Product> productPage = productRepository.findAll(new PageRequest(index, 3));
            return productPage.getContent();
        }
        return (List<Product>) productRepository.findAll();
    }
}

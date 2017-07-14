package ru.jblab.friendlymoney.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import ru.jblab.friendlymoney.model.Product;
import ru.jblab.friendlymoney.repository.ProductRepository;
import ru.jblab.friendlymoney.service.ProductService;

import java.util.List;

import static java.lang.Math.toIntExact;

@Service
public class ProductServiceImpl implements ProductService{

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
        return productRepository.countAll();
    }

    @Override
    public List<Product> getAllFirstByCounter(Pageable pageable) {
        return productRepository.findAllFirstByCounter(pageable);
    }

    @Override
    public List<Product> getAllTopByCounter(Pageable pageable) {
        return productRepository.findAllTopByCounter(pageable);
    }

    @Override
    public List<Product> getAllByCategory(String category) {
        return productRepository.findAllByCategory(category);
    }

    @Override
    public List<Product> getAllStaringWith(String category) {
        return productRepository.findAllByCategoryStartingWith(category);
    }
}

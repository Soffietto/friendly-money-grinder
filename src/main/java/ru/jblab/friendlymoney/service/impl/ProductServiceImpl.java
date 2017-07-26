package ru.jblab.friendlymoney.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import ru.jblab.friendlymoney.model.Product;
import ru.jblab.friendlymoney.repository.ProductRepository;
import ru.jblab.friendlymoney.service.ProductService;

import java.util.List;

import static java.lang.Math.toIntExact;

@Service
public class ProductServiceImpl implements ProductService {

    private final int PRODUCTS_ON_PAGE = 30;

    private final ProductRepository PRODUCT_REPOSITORY;

    @Autowired
    public ProductServiceImpl(ProductRepository PRODUCT_REPOSITORY) {
        this.PRODUCT_REPOSITORY = PRODUCT_REPOSITORY;
    }

    @Override
    public void add(Product product) {
        PRODUCT_REPOSITORY.save(product);
    }

    @Override
    public Product findOneById(Long id) {
        return PRODUCT_REPOSITORY.findOne(id);
    }

    @Override
    public void remove(Long id) {
        PRODUCT_REPOSITORY.delete(id);
    }

    @Override
    public void remove(Product product) {
        PRODUCT_REPOSITORY.delete(product);
    }

    @Override
    public List<Product> getAll() {
        return PRODUCT_REPOSITORY.findAll();
    }

    @Override
    public Long countAll() {
        return PRODUCT_REPOSITORY.count();
    }

    @Override
    public List<Product> getAllFirstByCounter(Pageable pageable) {
        return PRODUCT_REPOSITORY.findAllFirstByCounter(pageable);
    }

    @Override
    public List<Product> getAllByCategory(String category) {
        return PRODUCT_REPOSITORY.findAllByCategory(category);
    }

    @Override
    public List<Product> getRandomProducts(String readableCategory) {
        List<Product> categoryProducts = PRODUCT_REPOSITORY.findAllByReadableCategory(readableCategory);
        int count = categoryProducts.size();
        if (count > 3) {
            count/=3;
            int index = (int) (Math.random() * count);
            Page<Product> productPage = PRODUCT_REPOSITORY.findAllByReadableCategory(readableCategory, new PageRequest(index, 3));
            return productPage.getContent();
        }
        return categoryProducts;
    }

    @Override
    public List<Product> getAllByNamePart(String namePart) {
        return PRODUCT_REPOSITORY.getAllByNameContainingIgnoreCase(namePart);
    }

    @Override
    public Product getByReadableName(String readableName) {
        return PRODUCT_REPOSITORY.getByReadableName(readableName);
    }

    @Override
    public Page<Product> findAllByReadableCategory(String readableCategory, int page) {
        return PRODUCT_REPOSITORY.findAllByReadableCategory(readableCategory, new PageRequest(page-1, PRODUCTS_ON_PAGE));
    }

    @Override
    public Page<Product> findAll(int page) {
        return PRODUCT_REPOSITORY.findAll(new PageRequest(page-1, PRODUCTS_ON_PAGE));
    }
}

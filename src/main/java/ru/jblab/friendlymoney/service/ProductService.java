package ru.jblab.friendlymoney.service;

import org.springframework.data.domain.Pageable;
import ru.jblab.friendlymoney.model.Product;

import java.util.List;

public interface ProductService {
    void add(Product product);
    Product findOneById(Long id);
    void remove(Long id);
    void remove(Product product);
    List<Product> getAll();
    Long countAll();
    List<Product> getAllFirstByCounter(Pageable pageable);
    List<Product> getAllTopByCounter(Pageable pageable);
    List<Product> getAllByCategory(String category);
    List<Product> getAllStaringWith(String category);
}

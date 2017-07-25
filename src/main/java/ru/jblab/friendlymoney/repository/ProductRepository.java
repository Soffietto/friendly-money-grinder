package ru.jblab.friendlymoney.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.jblab.friendlymoney.model.Product;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("select p from Product p order by p.counter ")
    List<Product> findAllFirstByCounter(Pageable pageable);

    List<Product> findAllByCategory(String category);

    List<Product> getAllByNameContainingIgnoreCase(String namePart);

    Product getByReadableName(String readableName);

    Page<Product> findAllByReadableCategory(String readableCategory, Pageable pageable);
}

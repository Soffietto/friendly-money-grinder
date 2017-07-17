package ru.jblab.friendlymoney.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.jblab.friendlymoney.model.Product;

import java.util.List;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {

    @Query(value = "select p from Product p where p.counter = " +
            "(select min(p.counter) from Product p )")
    List<Product> findAllFirstByCounter(Pageable pageable); //TODO удалит товар с минимальным костом, даже если он будет 1

    @Query("select count(p) from Product p")
    Long countAll();

    @Query(value = "select p from Product p where p.counter = " +
            "(select max(p.counter) from Product p )")
    List<Product> findAllTopByCounter(Pageable pageable);

    List<Product> findAllByCategory(String category);

    List<Product> findAllByCategoryStartingWith(String category);
}

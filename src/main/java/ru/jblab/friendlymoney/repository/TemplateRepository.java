package ru.jblab.friendlymoney.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.jblab.friendlymoney.model.Template;

public interface TemplateRepository extends JpaRepository<Template, Long>{
}

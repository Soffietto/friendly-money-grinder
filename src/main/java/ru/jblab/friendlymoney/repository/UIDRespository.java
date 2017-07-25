package ru.jblab.friendlymoney.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.jblab.friendlymoney.model.UID;

public interface UIDRespository extends JpaRepository<UID, Long>{
}

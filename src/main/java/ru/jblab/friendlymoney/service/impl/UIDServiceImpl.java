package ru.jblab.friendlymoney.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.jblab.friendlymoney.model.UID;
import ru.jblab.friendlymoney.repository.UIDRespository;
import ru.jblab.friendlymoney.service.UIDService;

import java.util.List;

@Service
public class UIDServiceImpl implements UIDService{

    @Autowired
    private UIDRespository uidRespository;

    @Override
    public void add(UID uid) {
        uidRespository.save(uid);
    }

    @Override
    public List<UID> getAll() {
        return uidRespository.findAll();
    }
}

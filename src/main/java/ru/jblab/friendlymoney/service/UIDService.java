package ru.jblab.friendlymoney.service;

import ru.jblab.friendlymoney.model.UID;

import java.util.List;

public interface UIDService {

    void add(UID uid);

    List<UID> getAll();
}

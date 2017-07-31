package ru.jblab.friendlymoney.service;

import ru.jblab.friendlymoney.model.Template;

import java.util.List;

public interface TemplateService {
    void add(Template template);
    List<Template> findAll();
}

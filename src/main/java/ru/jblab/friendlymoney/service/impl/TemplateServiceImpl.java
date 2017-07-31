package ru.jblab.friendlymoney.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.jblab.friendlymoney.model.Template;
import ru.jblab.friendlymoney.repository.TemplateRepository;
import ru.jblab.friendlymoney.service.TemplateService;

import java.util.List;

@Service
public class TemplateServiceImpl implements TemplateService{

    private TemplateRepository templateRepository;

    @Autowired
    public TemplateServiceImpl(TemplateRepository templateRepository) {
        this.templateRepository = templateRepository;
    }

    @Override
    public void add(Template template) {
        templateRepository.save(template);
    }

    @Override
    public List<Template> findAll() {
        return templateRepository.findAll();
    }
}

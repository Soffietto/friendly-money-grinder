package ru.jblab.friendlymoney.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.WebMvcAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import ru.jblab.friendlymoney.model.Template;
import ru.jblab.friendlymoney.service.TemplateService;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Configuration
@EnableWebMvc
@PropertySource(value = "classpath:application.properties", ignoreResourceNotFound = true)
public class WebConfig extends WebMvcConfigurerAdapter {

    private int randomDirectory = (int) (Math.random() * countDirectories()) + 1;
    @Autowired
    private TemplateService templateService;

    private int countDirectories() {
        int directoryCounter = 0;
        try {
            directoryCounter = new ClassPathResource("makets").getFile().listFiles().length;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return directoryCounter;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        List<Template> templateList = templateService.findAll();
        Template template;
        if(templateList.size() == 0){
            template = new Template();
            template.setMaketNumber(randomDirectory);
            templateService.add(template);
        }else {
            template = templateList.get(0);
        }
        int directoryNumber = template.getMaketNumber();
        registry.addResourceHandler("/css/**", "/js/**", "/fonts/**", "/images/**").
                addResourceLocations(
                        "classpath:makets/maket" + directoryNumber + "/static/css/",
                        "classpath:makets/maket" + directoryNumber + "/static/js/",
                        "classpath:makets/maket" + directoryNumber + "/static/fonts/",
                        "classpath:makets/maket" + directoryNumber + "/static/images/"
                        );
    }

    @Bean
    public FreeMarkerConfigurer freemarkerConfig() {
        Template template = templateService.findAll().get(0);
        FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer();
        freeMarkerConfigurer.setTemplateLoaderPath("classpath:makets/maket" + template.getMaketNumber() + "/templates/");
        return freeMarkerConfigurer;
    }
}

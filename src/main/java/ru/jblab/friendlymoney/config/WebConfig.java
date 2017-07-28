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

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

@Configuration
@EnableWebMvc
@PropertySource(value = "classpath:application.properties", ignoreResourceNotFound = true)
public class WebConfig extends WebMvcConfigurerAdapter {

    private int randomDirectory = (int) (Math.random() * countDirectories()) + 1;


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
        registry.addResourceHandler("/css/**", "/js/**", "/fonts/**", "/images/**").
                addResourceLocations(
                        "classpath:makets/maket" + randomDirectory + "/static/css/",
                        "classpath:makets/maket" + randomDirectory + "/static/js/",
                        "classpath:makets/maket" + randomDirectory + "/static/fonts/",
                        "classpath:makets/maket" + randomDirectory + "/static/images/"
                        );
    }

    @Bean
    public FreeMarkerConfigurer freemarkerConfig() {
        FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer();
        freeMarkerConfigurer.setTemplateLoaderPath("classpath:makets/maket" + randomDirectory + "/templates/");
        return freeMarkerConfigurer;
    }
}

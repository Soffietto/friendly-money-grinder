package ru.jblab.friendlymoney.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
@PropertySource(value = "classpath:application.properties", ignoreResourceNotFound = true)
public class WebConfig extends WebMvcConfigurerAdapter{

    @Autowired
    private Environment env;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        String staticPath = env.getProperty("spring.resources.static-locations") + "**";
        registry.addResourceHandler("/resources/**").
                addResourceLocations("/resources/");
    }

    //TODO Исправить
}

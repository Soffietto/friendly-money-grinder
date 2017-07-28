package ru.jblab.friendlymoney.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.WebMvcAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

@Configuration
@EnableWebMvc
@PropertySource(value = "classpath:application.properties", ignoreResourceNotFound = true)
public class WebConfig extends WebMvcConfigurerAdapter {

    private final Integer DIRECTORY_COUNTER = 2;
    private int randomDirectory = (int) (Math.random() * DIRECTORY_COUNTER) + 1;

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

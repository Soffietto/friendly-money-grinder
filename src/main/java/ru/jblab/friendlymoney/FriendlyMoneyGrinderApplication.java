package ru.jblab.friendlymoney;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.boot.web.servlet.ErrorPage;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpStatus;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.client.RestTemplate;
import ru.jblab.friendlymoney.util.ServerUtil;

import javax.annotation.PostConstruct;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;
import java.util.Properties;

@SpringBootApplication
@EnableScheduling
public class FriendlyMoneyGrinderApplication {

    @Autowired
    private ServerUtil serverUtil;

    public static void main(String[] args) {
        SpringApplication.run(FriendlyMoneyGrinderApplication.class, args);
    }

    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }

    @PostConstruct
    public void getUidifEmpty() throws IOException {
        FileInputStream in = new FileInputStream("src/main/resources/server.properties");
        Properties props = new Properties();
        props.load(in);
        in.close();

        FileOutputStream out = new FileOutputStream("src/main/resources/server.properties", true);
        String property = props.getProperty("server.uid");
        if (property == null) {
            String uId = serverUtil.getUID();
            props.setProperty("server.uid", uId);
            props.remove("server.url");
            props.store(out, null);
        }
        out.close();
    }

}

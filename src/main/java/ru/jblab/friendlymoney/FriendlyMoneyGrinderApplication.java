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
import ru.jblab.friendlymoney.model.UID;
import ru.jblab.friendlymoney.service.UIDService;
import ru.jblab.friendlymoney.util.ServerUtil;

import javax.annotation.PostConstruct;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.Properties;

@SpringBootApplication
@EnableScheduling
public class FriendlyMoneyGrinderApplication {

    @Autowired
    private ServerUtil serverUtil;
    @Autowired
    private UIDService uidService;

    public static void main(String[] args) {
        SpringApplication.run(FriendlyMoneyGrinderApplication.class, args);
    }

    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }

    @PostConstruct
    public void getUidifEmpty() throws IOException {
        List<UID> uidList = uidService.getAll();
        if (uidList.size() == 0) {
            String uidString = serverUtil.getUID();
            UID uid = new UID();
            uid.setUid(uidString);
            uidService.add(uid);
        }
    }

}

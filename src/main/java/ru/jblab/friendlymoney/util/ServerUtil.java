package ru.jblab.friendlymoney.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.client.ResourceAccessException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;
import ru.jblab.friendlymoney.model.Product;

import java.util.Arrays;
import java.util.List;

@Component
@PropertySource(value = "classpath:server.properties", ignoreResourceNotFound = true)
public class ServerUtil {

    private final RestTemplate restTemplate;
    private final Environment env;
    private final String GET_PRODUCTS_URL = "get";
    private final String GET_UID_URL = "registration";

    @Autowired
    public ServerUtil(RestTemplate restTemplate, Environment env) {
        this.restTemplate = restTemplate;
        this.env = env;
    }

    public List<Product> getAllFromServer(int count) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String serverUrl = env.getProperty("server.url");
        serverUrl += GET_PRODUCTS_URL;
        String serverUid = env.getProperty("server.uid");
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(serverUrl)
                .queryParam("count", count)
                .queryParam("uid", serverUid);
        try {
            Product[] products = restTemplate.getForObject(builder.build().encode().toUri(), Product[].class);
            return Arrays.asList(products);
        }catch (ResourceAccessException e){
            throw new ResourceAccessException("Server is offline");
        }
    }

    public String getUID(){
        String url = env.getProperty("server.url");
        url += GET_UID_URL;
        return restTemplate.getForObject(url, String.class);
    }
}

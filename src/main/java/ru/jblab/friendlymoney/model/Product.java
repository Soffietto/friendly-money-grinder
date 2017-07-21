package ru.jblab.friendlymoney.model;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Entity
public class Product extends AbstractEntity implements Serializable {

    private String name;
    private String price;
    @Column(columnDefinition = "Text")
    private String url;
    @ElementCollection
    @Column(columnDefinition = "Text")
    private List<String> imgUrls;
    @Column(columnDefinition = "Text")
    private String mainImgUrl;
    @Column(columnDefinition = "Text")
    private String description;
    private Long counter = 0L;
    private String currency;
    private String category;
    private String readableCategory;
    private String readableName;
    @ElementCollection
    private Map<String, String> params;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getCounter() {
        return counter;
    }

    public void setCounter(Long counter) {
        this.counter = counter;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<String> getImgUrls() {
        return imgUrls;
    }

    public void setImgUrls(List<String> imgUrls) {
        this.imgUrls = imgUrls;
    }

    public String getMainImgUrl() {
        return mainImgUrl;
    }

    public void setMainImgUrl(String mainImgUrl) {
        this.mainImgUrl = mainImgUrl;
    }

    public String getReadableCategory() {
        return readableCategory;
    }

    public void setReadableCategory(String readableCategory) {
        this.readableCategory = readableCategory;
    }

    public String getReadableName() {
        return readableName;
    }

    public void setReadableName(String readableName) {
        this.readableName = readableName;
    }

    public Map<String, String> getParams() {
        return params;
    }

    public void setParams(Map<String, String> params) {
        this.params = params;
    }
}

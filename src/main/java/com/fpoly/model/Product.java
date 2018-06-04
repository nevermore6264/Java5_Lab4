package com.fpoly.model;

public class Product {
    private String name;
    private Double unitPrice;
    private Double discount;

    public Product() {
    }

    public Product(String name, Double unitPrice, Double discount) {
        this.name = name;
        this.unitPrice = unitPrice;
        this.discount = discount;
    }

    public Double getNewPrice() {
        return unitPrice * (1 - discount);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }
}

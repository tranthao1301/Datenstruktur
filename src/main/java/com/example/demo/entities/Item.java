package com.example.demo.entities;

import com.example.demo.fachwerte.Geldbetrag;

public class Item {

    private Product product;
    private int quantity;
    private Geldbetrag total = new Geldbetrag(0);

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    public Geldbetrag getTotal(){return total;}

    public Item() {
    }

    public Item(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }
}

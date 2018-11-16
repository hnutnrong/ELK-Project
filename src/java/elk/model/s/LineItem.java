/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package elk.model.s;

import elk.model.Product;
import java.math.BigDecimal;

/**
 *
 * @author Books
 */
public class LineItem {
    Product product;
    double salePrice;
    int quantity;

    public LineItem() {
    }

    public LineItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
        this.salePrice=product.getPrice();// edited
    }

    public LineItem(Product product) {
        this(product,1);
    }
    
    public Double getTotalPrice(){
        return this.salePrice*this.quantity;//edited
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Double getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(Double salePrice) {
        this.salePrice = salePrice;//edited
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}



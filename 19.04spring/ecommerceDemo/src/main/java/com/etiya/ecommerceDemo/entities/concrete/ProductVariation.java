package com.etiya.ecommerceDemo.entities.concrete;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "product_variations")
public class ProductVariation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "value")
    private String value;

    @ManyToOne()
    @JoinColumn(name = "category_id")
    private Category category;

    /// doldurulacak private product product;

    /// doldurulacak private attribute attribute;

}


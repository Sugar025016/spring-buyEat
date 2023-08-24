package com.buy_eat.buy_eat.model.response;

import java.util.List;
import java.util.stream.Collectors;

import com.buy_eat.buy_eat.entity.Tab;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class TabProductResponse {

    private Integer id;

    private String name;

    private List<ProductResponse> products;

    public TabProductResponse(Tab tab) {
        this.id = tab.getId();
        this.name = tab.getName();

        this.products = tab.getProducts().stream().map(v -> new ProductResponse(v))
        .collect(Collectors.toList());
    }

    

}

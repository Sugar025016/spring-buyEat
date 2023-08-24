package com.buy_eat.buy_eat.model.response;

import org.springframework.beans.BeanUtils;

import com.buy_eat.buy_eat.entity.Shop;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ShopResponse {


    
    private Integer id;

    private String name;
    // private String phone;
    private String address;
    private String description;
    private String img;
    private boolean isOrderable;

    // private int qty;

    // private int total;

    // private int totalOriginPrice;
    public ShopResponse(Shop shop) {
        BeanUtils.copyProperties(shop,this);

        if(shop.getFileData()!=null){
            this.img=shop.getFileData().getFileName();
        }
        this.address=shop.getAddress().getCity()+shop.getAddress().getArea()+shop.getAddress().getDetail();

    }




}

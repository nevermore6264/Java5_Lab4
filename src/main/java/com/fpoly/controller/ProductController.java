package com.fpoly.controller;

import com.fpoly.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {
    @RequestMapping("list")
    public String list(ModelMap model) {
        List<Product> list = new ArrayList<>();
        list.add(new Product("Nokia Star", 1000.0, 0.05));
        list.add(new Product("iPhone 9", 1500.0, 0.1));
        list.add(new Product("Samsung Galaxy N10", 750.0, 0.15));
        list.add(new Product("Sony Experia", 500.0, 0.0));
        model.addAttribute("prods", list);
        return "product/list";
    }
}


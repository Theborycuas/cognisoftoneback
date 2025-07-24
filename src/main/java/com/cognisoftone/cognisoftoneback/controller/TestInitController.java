package com.cognisoftone.cognisoftoneback.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestInitController {

    @GetMapping("/")
    public String hello() {
        return "OK";
    }
}
package com.example.prjjsp2.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("front")
@RequiredArgsConstructor
public class FrontController {

    @GetMapping("list")
    public void list() {
        
    }
}

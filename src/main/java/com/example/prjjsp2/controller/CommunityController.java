package com.example.prjjsp2.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("community")
@RequiredArgsConstructor
public class CommunityController {

    @GetMapping("regular")
    public void regular() {

    }

    @GetMapping("imme")
    public void imme() {
        
    }
}

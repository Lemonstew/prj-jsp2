package com.example.prjjsp2.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("game")
@RequiredArgsConstructor
public class GameController {

    @GetMapping("list")
    public void list() {

    }

    @GetMapping("rank")
    public void rank() {

    }

    @GetMapping("vote")
    public void vote() {
        
    }
}

package com.example.prjjsp2.controller;

import com.example.prjjsp2.dto.Member;
import com.example.prjjsp2.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
@RequestMapping("member")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService service;

    @GetMapping("login")
    public void login() {

    }

    @PostMapping("login")
    public String loginProcess(Member member,
                               RedirectAttributes rttr,
                               HttpSession session) {
        Member a = service.enter(member);

        if (a == null) {
            rttr.addFlashAttribute("message", "아이디나 비밀번호를 확인해주세요.");
            return "redirect:/member/login";
        } else {
            session.setAttribute("loggedInMember", a);
            return "redirect:/home/main";
        }
    }

    @GetMapping("signup")
    public void signup() {

    }

    @PostMapping("signup")
    public String signupProcess(Member member, RedirectAttributes rttr) {

        service.addMember(member);
        return "redirect:/member/login";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.invalidate();

        return "redirect:/home/main";
    }

    @GetMapping("mypage")
    public void mypage() {

    }

    @GetMapping("myinfo")
    public void myinfo(Member member) {
        Map.of("member", member);
    }
}

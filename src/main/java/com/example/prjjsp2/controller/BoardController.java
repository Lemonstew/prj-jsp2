package com.example.prjjsp2.controller;

import com.example.prjjsp2.dto.Board;
import com.example.prjjsp2.dto.Member;
import com.example.prjjsp2.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("board")
@RequiredArgsConstructor
public class BoardController {

    private final BoardService service;

    @GetMapping("list")
    public void board(Model model) {
        List<Board> board = service.listup();
        model.addAttribute("board", board);
    }

    @GetMapping("qna")
    public void qna() {

    }

    @GetMapping("info")
    public void info() {

    }

    @GetMapping("new")
    public void newBoard() {

    }

    @PostMapping("new")
    public String newBoardProcess(Board board,
                                  RedirectAttributes rttr,
                                  @SessionAttribute("loggedInMember") Member member) {

        service.add(board, member);
        rttr.addAttribute("number", board.getId());

        return "redirect:/board/view";
    }

    @GetMapping("view")
    public void viewBoard(Integer number, Model model) {

        Board board = service.show(number);
        model.addAttribute("board", board);
    }

    @GetMapping("edit")
    public void editBoard(Integer number, Model model) {
        Board board = service.show(number);
        model.addAttribute("board", board);
    }

    @PostMapping("edit")
    public String editBoardProcess(RedirectAttributes rttr,
                                   Board board,
                                   @SessionAttribute("loggedInMember") Member member) {

        System.out.println(board);
        service.rewrite(board, member);
        rttr.addAttribute("number", board.getId());
        return "redirect:/board/view";
    }

}

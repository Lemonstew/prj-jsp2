package com.example.prjjsp2.service;

import com.example.prjjsp2.dto.Board;
import com.example.prjjsp2.dto.Member;
import com.example.prjjsp2.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class BoardService {

    private final BoardMapper mapper;

    public void add(Board board, Member member) {
        System.out.println(member);
        mapper.insert(board, member);

    }

    public Board show(Integer number) {

        System.out.println(mapper.read(number));
        return mapper.read(number);
    }


    public List<Board> listup() {
        return mapper.see();
    }
}

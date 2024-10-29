package com.example.prjjsp2.service;

import com.example.prjjsp2.dto.Member;
import com.example.prjjsp2.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {

    private final MemberMapper mapper;


    public void addMember(Member member) {
        System.out.println(member);
        mapper.newMember(member);
    }

    public String enter(Member member) {
        return mapper.logIn(member);
    }
}

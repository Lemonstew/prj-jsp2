package com.example.prjjsp2.mapper;

import com.example.prjjsp2.dto.Board;
import com.example.prjjsp2.dto.Member;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface BoardMapper {
    @Insert("""
            INSERT INTO board
            (title, content, writer)
            VALUES (#{board.title}, #{board.content}, #{member.nickName})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "board.id")
    int insert(Board board, Member member);

    @Select("""
            SELECT b.number id,
                   b.title,
                   b.content,
                   b.writer,
                   b.inserted,
                   m.nick_name
            FROM board b JOIN member m
            ON b.writer = m.nick_name
            WHERE b.number = #{number}
            """)
    Board read(Integer number);
}

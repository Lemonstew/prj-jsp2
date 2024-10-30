package com.example.prjjsp2.mapper;

import com.example.prjjsp2.dto.Board;
import com.example.prjjsp2.dto.Member;
import org.apache.ibatis.annotations.*;

import java.util.List;

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

    @Select("""
            SELECT number id,
                   title,
                   writer,
                   inserted
            FROM board
            ORDER BY id DESC
            """)
    List<Board> see();

    @Update("""
            UPDATE board
            SET title=#{board.title},
                content=#{board.content},
                inserted=#{board.inserted}
            WHERE id=#{board.id}
            """)
    int update(Board board, Member member);
}

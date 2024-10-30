package com.example.prjjsp2.mapper;

import com.example.prjjsp2.dto.Member;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MemberMapper {

    @Insert("""
            INSERT INTO member
            (id, password, nick_name, description)
            VALUES (#{id}, #{password}, #{nickName}, #{description})
            """)
    int newMember(Member member);

    @Select("""
            SELECT *
            FROM member
            WHERE id = #{id}
                AND password = #{password}
            """)
    Member logIn(Member member);
}

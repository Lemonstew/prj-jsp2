package com.example.prjjsp2.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Member {
    private String id;
    private String password;
    private String nickName;
    private String description;
    private LocalDate inserted;
}

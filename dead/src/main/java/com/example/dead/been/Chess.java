package com.example.dead.been;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Chess {
    //坐标
    private String xy;
    private String message;
    //是否允许落子
    private boolean bout;
    private String color;
}

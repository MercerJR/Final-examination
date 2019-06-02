package com.example.dead.been;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AddFriend {
    private String user;
    private String friend;
    private int user_state;
    private int friend_state;
}

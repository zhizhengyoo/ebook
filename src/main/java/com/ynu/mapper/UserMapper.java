package com.ynu.mapper;

import java.util.Map;
import com.ynu.dto.User;

public interface UserMapper {
    public User findUser(String userName);
    public User selectUserById(Integer userId);
    public void insertUser(User user);
    public void updateAccount(Map<String, Integer> map);

}

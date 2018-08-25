/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.argusoft.securitydatabase.service;

import com.argusoft.securitydatabase.user.User;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author pradeepkumar
 */

public class UserService {
    @Autowired
    User user;
    List<User> list = new ArrayList();
    public void addUser() {
        list.add(user);
    }
    
}

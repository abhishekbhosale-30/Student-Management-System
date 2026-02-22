package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.demo.dao.UserRepository;
import com.example.demo.bean.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    UserRepository ur;

    // ✅ Health check endpoint (VERY IMPORTANT for Railway)
    @GetMapping("/health")
    @ResponseBody
    public String health() {
        return "Application Running";
    }

    // Home page
    @RequestMapping("/")
    public String Index() {
        return "index";
    }

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }

    @RequestMapping("/hello")
    @ResponseBody
    public String hello() {
        return "Hello Railway Working!";
    }
    
    @RequestMapping("/about")
    public String about() {
        return "about";
    }

    @RequestMapping("/registerform")
    public String registerform() {
        return "registerform";
    }

    @RequestMapping("/register")
    public String register(User u) {
        ur.save(u);
        return "redirect:/";
    }

    @RequestMapping("/show")
    public String show(HttpSession session) {
        List<User> userdata = (List<User>) ur.findAll();
        session.setAttribute("list", userdata);
        return "show";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("user_id") int user_id) {
        ur.deleteById(user_id);
        return "redirect:/show";
    }

    @RequestMapping("/showdatabyid")
    public String showdatabyid(@RequestParam("user_id") int user_id, HttpSession session) {

        Optional<User> o = ur.findById(user_id);

        if (o.isPresent()) {
            session.setAttribute("data", o.get());
            return "update";
        } else {
            return "redirect:/show";
        }
    }

    @RequestMapping("/updatesave")
    public String updatesave(User u) {
        ur.save(u);
        return "redirect:/show";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/loginData")
    public String loginData(User u, HttpSession session) {

        List<User> list = (List<User>) ur.findAll();

        for (User u1 : list) {
            if (u1.getEmail().equals(u.getEmail()) &&
                u1.getPassword().equals(u.getPassword())) {

                session.setAttribute("userlogindata", u1);
                return "redirect:/";
            }
        }

        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();   // better than removeAttribute
        return "redirect:/";
    }
}
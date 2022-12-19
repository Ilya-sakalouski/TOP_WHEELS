package ru.mail.ilya6697089.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class MainController {

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);
    @GetMapping
    public String homepage() {
        return "startPage";
    }
    @PostMapping
    public String homepage(HttpSession httpSession) {
        if (httpSession.isNew()) {
            logger.info("New session found");
            return "redirect:/user/login";
        } else {
            return "serviceSelection";
        }
    }

    @GetMapping("/contacts")
    public String ourContacts(){
        return "contacts";
    }
    @PostMapping("/contacts")
    public String contacts(){
        return "redirect:/";
    }

    @GetMapping("/route")
    public String route(){
        return "route";
    }
    @PostMapping("/route")
    public String routeOnMap(){
        return "redirect:/";
    }

    @GetMapping("/aboutUs")
    public String aboutUs(){
        return "aboutUs";
    }
    @PostMapping("/aboutUs")
    public String aboutUS(){
        return "redirect:/";
    }
}

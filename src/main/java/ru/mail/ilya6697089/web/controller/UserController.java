package ru.mail.ilya6697089.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.mail.ilya6697089.dto.UserLoginDto;
import ru.mail.ilya6697089.entity.User;
import ru.mail.ilya6697089.service.UserService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Optional;

@Controller
@RequestMapping("/user")
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/login")
    public String login(@ModelAttribute("user") UserLoginDto userLoginDto) {
        return "login";
    }
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("user") UserLoginDto userLoginDto, BindingResult bindingResult, HttpSession session, Model model) {
        if (bindingResult.hasErrors()) {
            logger.error("Validation failed");
            return "login";
        }
        Optional<User> currentUser = userService.findUserByEmail(userLoginDto.getEmail());
        if (currentUser.isPresent()) {
            if (currentUser.get().getPassword().equals(userLoginDto.getPassword())) {
                session.setAttribute("currentUser", currentUser.get());
                logger.info("Login success");
                return "redirect:/onlineEntry/serviceSelection";
            } else {
                logger.error("Wrong password");
                model.addAttribute("message", "Wrong password");
                return "login";
            }
        } else {
            logger.error("User is not present");
            model.addAttribute("message", "No such user");
            return "login";
        }
    }

    @GetMapping("/registration")
    public String registration(@ModelAttribute("user") User user) {
        return "registration";
    }
    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            logger.error("Validation failed");
            return "registration";
        }
        if (!userService.findUserByEmail(user.getEmail()).isPresent()) {
            userService.saveUser(user);
            logger.info("User successfully saved");
            return "redirect:/user/login";
        } else {
            logger.error("User already exists");
            model.addAttribute("message", "User already exists");
            return "registration";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        logger.info("Session successfully invalidated");
        return "redirect:/";
    }
}
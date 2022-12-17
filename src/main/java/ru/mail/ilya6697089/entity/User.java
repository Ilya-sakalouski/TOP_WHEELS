package ru.mail.ilya6697089.entity;

import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User{

    private long id;

    @NotBlank(message = "Field must not be empty")
    @Size(message = "Username length must be 2 - 16", min = 2, max = 16)
    private String username;

    @NotBlank(message = "Field must not be empty")
    @Pattern(regexp = "\\b[\\w.]+@\\w+\\.\\w{2,3}", message = "Wrong email pattern")
    private String email;

    @NotBlank(message = "Field must not be empty")
    @Size(message = "Phone number has incorrect length!", min = 13, max = 13)
    @Pattern(message = "Phone number is incorrect!", regexp = "\\+375[\\d]+")
    private String phoneNumber;

    @NotBlank(message = "Field must not be empty")
    @Size(message = "Password length must be 5-10 characters!", min = 5, max = 10)
    @Pattern(message = "Password must consist of numbers and latin letters!", regexp = "[\\w\\d]+")
    private String password;

}

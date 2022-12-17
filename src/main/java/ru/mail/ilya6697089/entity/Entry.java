package ru.mail.ilya6697089.entity;

import lombok.*;
import org.springframework.beans.factory.annotation.Value;

import javax.validation.constraints.NotEmpty;
import java.time.LocalDateTime;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Entry {
    private long id;
    private LocalDateTime entryDateTime;
    @NotEmpty
    private String entryTime;
    @NotEmpty
    private String entryType;
    @NotEmpty
    private String carType;
    @NotEmpty
    private String wheelsDiameter;
    @NotEmpty
    private String numberOfWheels;
    @NotEmpty
    private String additionalServices;
    @Value("Нет комментария")
    private String comment;

}

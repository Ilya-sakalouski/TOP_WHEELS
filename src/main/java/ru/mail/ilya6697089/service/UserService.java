package ru.mail.ilya6697089.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import ru.mail.ilya6697089.entity.User;
import ru.mail.ilya6697089.storage.Storage;

import java.util.Optional;
@Component
public class UserService {
    @Autowired
    @Qualifier("inMemoryUserStorage")
    private Storage<User, Long> userStorage;

    public User saveUser(User user) {
        userStorage.save(user);
        return user;
    }
    public Optional<User> findUserByEmail(String email){
        return userStorage.findEntity(email);
    }
}

package ru.mail.ilya6697089.storage;

import org.springframework.stereotype.Component;
import ru.mail.ilya6697089.entity.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicLong;

@Component("inMemoryUserStorage")
public class InMemoryUserStorage implements Storage<User, Long> {

    private final List<User> userList = new ArrayList<>();

    private final AtomicLong userIdGenerator = new AtomicLong(0);

    @Override
    public User save(User user) {
        user.setId(userIdGenerator.incrementAndGet());
        userList.add(user);
        return user;
    }

    @Override
    public Optional<User> findById(Long id) {
        for (User user : userList) {
            if (user.getId() == id) {
                return Optional.of(user);
            }
        }
        return Optional.empty();
    }

    @Override
    public User delete(User entity) {
        userList.remove(entity);
        return entity;
    }

    @Override
    public List<User> getListOfEntity() {
        return userList;
    }

    @Override
    public Optional<User> findEntity(String email) {
        for (User user : userList) {
            if (user.getEmail().equals(email)) {
                return Optional.of(user);
            }
        }
        return Optional.empty();
    }
}

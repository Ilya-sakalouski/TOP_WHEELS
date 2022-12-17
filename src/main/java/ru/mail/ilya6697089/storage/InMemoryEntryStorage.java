package ru.mail.ilya6697089.storage;

import org.springframework.stereotype.Component;
import ru.mail.ilya6697089.entity.Entry;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicLong;

@Component("inMemoryEntryStorage")
public class InMemoryEntryStorage implements Storage<Entry, Long>  {

    private final List<Entry> entryList = new ArrayList<>();

    private final AtomicLong entryIdGenerator = new AtomicLong(0);

    @Override
    public Entry save(Entry entry) {
        entry.setId(entryIdGenerator.incrementAndGet());
        entryList.add(entry);
        return entry;
    }

    @Override
    public Optional<Entry> findById(Long id) {
        for (Entry entry : entryList) {
            if (entry.getId() == id) {
                return Optional.of(entry);
            }
        }
        return Optional.empty();
    }

    @Override
    public Entry delete(Entry entity) {
        entryList.remove(entity);
        return entity;
    }

    @Override
    public List<Entry> getListOfEntity() {
        return entryList;
    }

    @Override
    public Optional<Entry> findEntity(String entryTime) {
        for (Entry entry : entryList) {
            if (entry.getEntryTime().equals(entryTime)) {
                return Optional.of(entry);
            }
        }
        return Optional.empty();
    }
}

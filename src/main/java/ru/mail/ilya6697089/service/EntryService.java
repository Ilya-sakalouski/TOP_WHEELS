package ru.mail.ilya6697089.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import ru.mail.ilya6697089.entity.Entry;
import ru.mail.ilya6697089.storage.Storage;

import java.util.Optional;

@Component
public class EntryService {
    @Autowired
    @Qualifier("inMemoryEntryStorage")
    private Storage<Entry, Long> entryStorage;

    public Entry saveEntry(Entry entry) {
        entryStorage.save(entry);
        return entry;
    }
    public Optional<Entry> findEntryByEntryTime(String entryTime){
        return entryStorage.findEntity(entryTime);
    }
}

package ru.mail.ilya6697089.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.mail.ilya6697089.entity.Entry;
import ru.mail.ilya6697089.entity.User;
import ru.mail.ilya6697089.service.EntryService;

@Controller
@RequestMapping("/onlineEntry")
public class EntryController {

    private final EntryService entryService;

    public EntryController(EntryService entryService) {
        this.entryService = entryService;
    }

    @GetMapping("/serviceSelection")
    public String serviceSelection(@ModelAttribute() Entry entry){
        return "serviceSelection";
    }
    @PostMapping("/serviceSelection")
    public String serviceSelection(@ModelAttribute("newEntry")Entry entry, Model model , BindingResult bindingResult){
       if (bindingResult.hasErrors()) {
           return "/serviceSelection";
       }
        if (!entryService.findEntryByEntryTime(entry.getEntryTime()).isPresent()) {
            //entry.setEntryDateTime(LocalDateTime.now());                        ???????????????????????? DELETE ?
            model.addAttribute("entryTime",entry.getEntryTime());
            model.addAttribute("entryType",entry.getEntryType());
            model.addAttribute("carType",entry.getCarType());
            model.addAttribute("wheelsDiameter",entry.getWheelsDiameter());
            model.addAttribute("numberOfWheels",entry.getNumberOfWheels());
            model.addAttribute("additionalServices",entry.getAdditionalServices());
            model.addAttribute("comment",entry.getComment());
            entryService.saveEntry(entry);
            return "entryCheckout";
        } else {
            model.addAttribute("message", "Запись на данное время невозможна");
            return "serviceSelection";
        }
    }

    @GetMapping("/entryCheckout")
    public String checkout(@ModelAttribute() Entry entry){
        return "entryCheckout";
    }
    @PostMapping("/entryCheckout")
    public String checkout(){
        return "completedEntry";
    }


    @GetMapping("/success")
    public String successEntry(@ModelAttribute("currentUser") User user, @ModelAttribute("currentEntry") Entry entry,Model model){
        model.addAttribute("userName",user);
        model.addAttribute("entryTime",entry);
        return "completedEntry";
    }
    @PostMapping("/success")
    public String successEntry(){
        return "redirect:/user/logout";
    }
}

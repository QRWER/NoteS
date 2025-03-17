package com.testcase.notes.controller;

import com.testcase.notes.entity.Note;
import com.testcase.notes.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;

import java.util.List;

@Controller
public class NotesController {

    @Autowired
    NoteService noteService;

    @GetMapping("/")
    public String mainView(Model model) {
        List<Note> allNotes = noteService.getAllNotes();
        model.addAttribute("allNotes", allNotes);
        model.addAttribute("newNote", new Note());
        return "main";
    }

    @PostMapping("/")
    public String addNote(@Valid @ModelAttribute("newNote") Note note, BindingResult bindingResult, Model model) {
        if(bindingResult.hasErrors()) {
            List<Note> allNotes = noteService.getAllNotes();
            model.addAttribute("allNotes", allNotes);
            return "main";
        }
        noteService.saveNote(note);
        return "redirect:/";
    }

    @GetMapping("/{id}")
    public String viewNote(@PathVariable("id") int id, Model model) {
        model.addAttribute("note", noteService.getNoteById(id));
        return "note";
    }

    @GetMapping("/delete/{id}")
    public String deleteNote(@PathVariable("id") int id) {
        noteService.deleteNote(noteService.getNoteById(id));
        return "redirect:/";
    }

    @PostMapping("/{id}")
    public String viewNote(@ModelAttribute("note") Note note) {
        noteService.saveNote(note);
        return "redirect:/";
    }
}

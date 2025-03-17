package com.testcase.notes.service;

import com.testcase.notes.dao.NoteDAO;
import com.testcase.notes.entity.Note;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class NoteService {

    @Autowired
    private NoteDAO noteDAO;

    public List<Note> getAllNotes() {
        return noteDAO.getAllNotes();
    }

    public Note getNoteById(int id) {
        return noteDAO.getNoteById(id);
    }

    public void saveNote(Note note) {
        noteDAO.saveNote(note);
    }

    public void deleteNote(Note note) {
        noteDAO.deleteNote(note);
    }

}

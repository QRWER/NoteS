package com.testcase.notes.dao;

import com.testcase.notes.entity.Note;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NoteDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Note> getAllNotes() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Note", Note.class).getResultList();
    }

    public Note getNoteById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Note.class, id);
    }

    public void saveNote(Note note) {
        Session session = sessionFactory.getCurrentSession();
        session.merge(note);
    }

    public void deleteNote(Note note) {
        Session session = sessionFactory.getCurrentSession();
        session.remove(note);
    }
}

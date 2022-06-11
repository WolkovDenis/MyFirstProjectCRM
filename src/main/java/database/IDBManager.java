package database;

import entity.Discipline;
import entity.Mark;
import entity.Student;
import entity.Term;

import java.util.List;
import java.util.Map;

public interface IDBManager {
    List<Student> getAllActivesStudents();

    void createStudent(String surname, String name, String group, String date);

    void deleteStudent(String id);

    Student getStudentById(String id);

    boolean canLogin(String login, String password, String role);

    List<Discipline> getAllActivesDiscipline();

    void createDiscipline(String discipline);

    void deleteDiscipline(String id);

    Discipline getDisciplineById(String id);

    void modifyStudent(String id, String surname, String name, String group, String dateToDatabase);

    List<Discipline> getDisciplinesByTerm(int id);

    List<Mark> getMarksByTerm(int idTerm, String idStud);

    void modifyDiscipline(String id, String discipline);

    List<Term> getAllActivesTerms();

    String getLastTermName();

    void createNewTerm(String newName, String duration, String[] ids);

    void deleteTerm(String idTerm);

    Term getTermById(String idTerm);

    void modifyTerm(String idTermModify, String duration, String[] idsDisc);
}

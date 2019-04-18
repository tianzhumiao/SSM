package net.wanho.mapper;

import net.wanho.pojo.Student;

import java.util.List;

/**
 * Created by mxp on 2019/4/18.
 */
public interface StudentMapper {
    List<Student> getAllStudents();
    List<Student>  queryByStudentId(Integer id);
    void addStudent(Student student);
    void updateStudent(Student student);
    void deleteStudent(Integer id);
}

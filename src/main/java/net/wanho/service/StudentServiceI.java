package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;

import java.util.List;

/**
 * Created by mxp on 2019/4/18.
 */
public interface StudentServiceI {
    PageInfo<Student> getAllStudents(Integer pageNum);
    List<Student>  queryByStudentId(Integer id);
    void addStudent(Student student);
    void updateStudent(Student student);
    void deleteStudent(Integer id);
}

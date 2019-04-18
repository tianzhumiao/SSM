package net.wanho.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.StudentMapper;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by mxp on 2019/4/18.
 */
@Service
public class StudentServiceImpl implements StudentServiceI {
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public PageInfo<Student> getAllStudents(Integer pageNum) {
        //设置分页信息 z只对接下来执行的sql语句生效
        PageHelper.startPage(1,4);
        List<Student> students = studentMapper.getAllStudents();

        PageInfo<Student> pageInfo= new PageInfo<Student>(students);

        return pageInfo;
    }


    @Override
    public List<Student> queryByStudentId(Integer id) {
        return studentMapper.queryByStudentId(id);
    }

    @Override
    public void addStudent(Student student) {
        studentMapper.addStudent(student);
    }

    @Override
    public void updateStudent(Student student) {
        studentMapper.updateStudent(student);
    }

    @Override
    public void deleteStudent(Integer id) {
        studentMapper.deleteStudent(id);
    }
}

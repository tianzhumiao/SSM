package net.wanho.controller;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Created by mxp on 2019/4/18.
 */
@Controller
public class StudentController {
    @Autowired
    private StudentServiceI studentServiceI;
    @RequestMapping("getAllStus")
    public String getAllStudent(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,Map map){
        PageInfo<Student> pageInfo = studentServiceI.getAllStudents(pageNum);
        map.put("pageInfo",pageInfo);
        return "student";
    }
    //登录跳转
    @RequestMapping("/toStudent")
    public String getAllStudent(){
        return "add";
    }

    //新增
    @RequestMapping("/addStudent")
    public String addStudent(Student student, Map map){
        studentServiceI.addStudent(student);
        return "redirect:getAllStus";
    }
    //删除
    @RequestMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("id") Integer id, Map map){
        studentServiceI.deleteStudent(id);
        return "redirect:getAllStus";
    }
    //查看
    @RequestMapping("/queryStudentById")
    public String queryStudentById(@RequestParam("id") Integer id,Map map){
        List<Student> stu = studentServiceI.queryByStudentId(id);
        map.put("stu",stu);
        return "update";
    }
    //修改
    @RequestMapping("/updateStudent")
    public String updateStudent(@RequestParam("id") Integer id,Student student,Map map){
        studentServiceI.updateStudent(student);
        return "redirect:getAllStus";
    }
}

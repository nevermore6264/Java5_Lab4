package com.fpoly.controller;

import com.fpoly.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {
    @Autowired
    ServletContext application;

    @RequestMapping(value = "/index")
    public String index(HttpServletRequest request, HttpSession session) {
        application.setAttribute("name", "Trần Trung Hiếu");
        application.setAttribute("level", 2);
        session.setAttribute("name", "Nguyễn Thị Thu Thủy");
        session.setAttribute("level", 4);
        request.setAttribute("name", "Nguyễn Văn Hùng");
        request.setAttribute("level", 3);
        session.setAttribute("salary", 1000);
        request.setAttribute("photo", "/imgs/bee.jpg");
        return "student/index";
    }

    @RequestMapping("index2")
    public String index2(ModelMap model) {
        Student sv1 = new Student("Trần Trung Hiếu", 5.5, "Ứng dụng phần mềm");
        Student sv2 = new Student("Nguyễn Thị Thu Thủy", 9.5, "Thiết kế trang web");
        Student sv3 = new Student("Nguyễn Văn Hùng", 3.5, "Thiết kế trang web");
        List<Student> list = new ArrayList<>();
        list.add(sv2);
        list.add(sv3);
        Map<String, Student> map = new HashMap<>();
        map.put("ThuyNTT", sv2);
        map.put("HungNV", sv3);
        model.addAttribute("bean", sv1);
        model.addAttribute("list", list);
        model.addAttribute("map", map);
        return "student/index2";
    }

    @RequestMapping("index3")
    public String index3(ModelMap modelMap) {
        Student sv1 = new Student("Trần Trung Hiếu", 5.5, "Ứng dụng phần mềm");
        Student sv2 = new Student("Nguyễn Thị Thu Thủy", 9.5, "Thiết kế trang web");
        Student sv3 = new Student("Nguyễn Văn Hùng", 3.5, "Thiết kế trang web");
        List<Student> list = new ArrayList<>();
        list.add(sv2);
        list.add(sv3);
        Map<String, Student> map = new HashMap<>();
        map.put("ThuyNTT", sv2);
        map.put("HungNV", sv3);
        modelMap.addAttribute("bean", sv1);
        modelMap.addAttribute("list", list);
        modelMap.addAttribute("map", map);
        return "student/index3";
    }
}


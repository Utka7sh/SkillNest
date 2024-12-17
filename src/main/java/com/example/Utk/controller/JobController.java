package com.example.Utk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.Utk.model.JobPost;
import com.example.Utk.service.JobService;

@Controller
public class JobController {

    @Autowired
    private JobService service;

    // ************************************************************************

    @RequestMapping({"/", "/home"})
    public String home(Model model) {
        List<JobPost> jobPosts = service.returnAllJobPosts();
        model.addAttribute("jobPosts", jobPosts);
        return "home"; // Maps to /WEB-INF/views/home.jsp
    }
    @GetMapping("/home")
    public String getHome(Model model) {
        List<JobPost> jobPosts = service.returnAllJobPosts();
        model.addAttribute("jobPosts", jobPosts);
        return "home";
    }
    // ************************************************************************

    @RequestMapping("/apply")
    public String apply() {
        return "apply"; // Maps to /WEB-INF/views/apply.jsp
    }

    @RequestMapping("/applied")
    public String applied() {
        return "applied";
    }
    // ************************************************************************

    @RequestMapping("/addjob")
    public String addJob() {
        return "addjob"; // Maps to /WEB-INF/views/addjob.jsp
    }

    // ************************************************************************

    @RequestMapping("/applyjob")
    public ModelAndView applyjob(String fullName, String contact, String email, int exp, MultipartFile resume, ModelAndView mv) {
        System.out.println(fullName);
        System.out.println(contact);
        System.out.println(email);
        System.out.println("Work experience is : " + exp + " years");

        // TODO: Handle resume file upload

        mv.setViewName("success"); // Maps to /WEB-INF/views/success.jsp
        return mv;
    }

    // ************************************************************************

    @RequestMapping("/contact")
    public String contact() {
        return "contact"; // Maps to /WEB-INF/views/contact.jsp
    }

    // ************************************************************************

    @GetMapping("/viewalljobs")
    public String viewJobs(Model model) {
        List<JobPost> jobPosts = service.returnAllJobPosts();
        model.addAttribute("jobPosts", jobPosts);
        return "viewalljobs"; // Maps to /WEB-INF/views/viewalljobs.jsp
    }

    // ************************************************************************

    @PostMapping("/handleAddJobForm")
    public String handleAddJobForm(JobPost jobPost, Model model) {
        service.addJobPost(jobPost);
        model.addAttribute("jobPost", jobPost);
        System.out.println("Job added: " + jobPost);
        return "success"; // Maps to /WEB-INF/views/success.jsp
    }

    // ************************************************************************

    @RequestMapping("/hLogin")
    public String hLogin() {
        return "hLogin";
    }

    @RequestMapping("/sLogin")
    public String sLogin() {
        return "sLogin";
    }

}

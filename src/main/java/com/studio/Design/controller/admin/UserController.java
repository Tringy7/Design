package com.studio.Design.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.studio.Design.domain.User;
import com.studio.Design.service.HandleUploadFile;
import com.studio.Design.service.UserService;

import jakarta.validation.Valid;

@Controller
public class UserController {

    private UserService userService;
    private HandleUploadFile handleUploadFile;

    public UserController(UserService userService, HandleUploadFile handleUploadFile) {
        this.userService = userService;
        this.handleUploadFile = handleUploadFile;
    }

    // admin
    @GetMapping("/admin/user")
    public String showUser(Model model) {
        model.addAttribute("userList", this.userService.getAllUser());
        return "admin/user/show";
    }

    @GetMapping("/admin/user/create")
    public String showUserCreate(Model model) {
        model.addAttribute("user", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String handleUserCreate(
            @Valid @ModelAttribute("user") User user,
            BindingResult userBindingResult,
            @RequestParam("avatarFile") MultipartFile file
    ) {
        if (userBindingResult.hasErrors()) {
            return "admin/user/create";
        }

        if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
            user.setAvatar(handleUploadFile.uploadFile(file, "user"));
        }
        this.userService.createUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/update/{id}")
    public String showUserUpdate(Model model, @PathVariable("id") Long id) {
        model.addAttribute("user", this.userService.getUser(id));
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update/{id}")
    public String handleUserUpdate(
            @Valid @ModelAttribute("user") User user,
            BindingResult userBindingResult,
            @RequestParam("avatarFile") MultipartFile file
    ) {
        if (userBindingResult.hasErrors()) {
            return "admin/user/update";
        }

        if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
            user.setAvatar(handleUploadFile.uploadFile(file, "user"));
        }
        this.userService.updateUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String showUserDelete(@PathVariable("id") Long id, Model model) {
        model.addAttribute("user", this.userService.getUser(id));
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete/{id}")
    public String handleUserDelete(@PathVariable("id") Long id) {
        this.userService.deleteUser(id);
        return "redirect:/admin/user";
    }

}

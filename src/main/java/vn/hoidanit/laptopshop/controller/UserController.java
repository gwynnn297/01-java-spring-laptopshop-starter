package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;

    }

    // public UserController(User user) {
    // this.user = user;
    // }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrUser = this.userService.findAllUserByEmail("new1@gmail.com");
        System.out.println(arrUser);
        model.addAttribute("eric", "test");
        model.addAttribute("phuc", "hello from phúc");
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users1", users);
        return "admin/user/table-user";
    }

    @RequestMapping(value = "/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    // sau khi bấm nút create qua phương thức post để nhảy qua đường link
    // /admin/user/create thì xử lý ở đây
    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User hoidanit) {
        this.userService.handleSaveUser(hoidanit);
        // sau khi ấn creater mong muốn chuyển về lại table-user thì
        // redirect:/admin/user cho nó render lên @RequestMapping("/admin/user") và trả
        // về dữ liệu mới không thể sử dụng return admin/user/table-user"
        return "redirect:/admin/user";
    }

}

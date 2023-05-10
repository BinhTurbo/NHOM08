package Controller;

import Entities.Customers;
import Repository.UserRepository;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/register")
    public String Register() {
        return "register";
    }

    @PostMapping("/register")
    public String HandleRegister(String fullname, String username, String password, String confirmpassword, String address, Model model) {
        if (!password.equals(confirmpassword)) {
            model.addAttribute("error", "Mật khẩu xác nhận không trùng khớp");
            return "register";
        }
        Customers newCustomer = new Customers();
        newCustomer.setUsername(username);
        newCustomer.setPassword(password);
        newCustomer.setAddress(address);
        newCustomer.setFullname(fullname);
        userRepository.save(newCustomer);
        model.addAttribute("success", "Đăng kí tài khoản thành công! Bạn có thể đăng nhập để tiếp tục mua sắm");
        return "register";
    }

    @GetMapping("/login")
    public String Login(HttpSession session) {
        if (session.getAttribute("username") != null) {
            return "redirect:/home";
        }
        return "login";
    }

    @PostMapping("/login")
    public String HandleLogin(String username, String password, HttpSession session) {
        Customers customers = userRepository.findByusernameAndPassword(username, password);
        if (customers != null) {
            session.setAttribute("username", customers.getFullname());
            session.setAttribute("idUser", customers.getCustomerID());
            return "redirect:/home";
        }
        return "login";
    }

    @GetMapping("/logout")
    public String Logout(HttpSession session) {
        session.removeAttribute("username");
        return "redirect:/home";
    }
    
}

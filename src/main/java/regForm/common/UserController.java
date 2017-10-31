package regForm.common;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	private UserService userService;
	
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService us){
		this.userService = us;
	}
	
	@RequestMapping(value = "/*", method = RequestMethod.GET)
	public String regUser(Model model) {
		model.addAttribute("user", new User());
		return "index";
	}
	
	@RequestMapping(value= "/addUser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User u){
		this.userService.addUser(u);
		return "redirect:/index";
	}
	
	@RequestMapping(value = "/getUsers", method = RequestMethod.GET)
    public ModelAndView getUsers(){
		List<User> list = userService.getUsers();
        return new ModelAndView("getUsers", "userList", list);
    }
}

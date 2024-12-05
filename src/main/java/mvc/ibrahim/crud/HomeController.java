package mvc.ibrahim.crud;

import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.ibrahim.crud.entities.User;
import mvc.ibrahim.crud.service.MyService;

@Controller
public class HomeController {

	@Autowired
	public MyService service;

	// For Viewing insert update and delete pages.
	@RequestMapping("/insert")
	public String insert() {
		return "home";
	}

	@RequestMapping("/update")
	public String update() {
		return "update";
	}

	@RequestMapping("/delete")
	public String delete() {
		return "delete";
	}

	// Insert functionality.
	@PostMapping("/runinsert")
	public String Insert(@ModelAttribute User user, Model model) {
		try {
			service.InserData(user);
			model.addAttribute("message", "Data inserted successfully!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "home";
	}

	// Fetch functionality.
	@GetMapping("/fetch")
	public String getUser(Model model) {
		try {
			List<User> allData = service.fetchAllData();
			model.addAttribute("users", allData); // Correctly passing users list to model
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "display"; // Return the JSP name
	}

	// Update functionality.
	@PostMapping("/updateUser")
	public String Update(@ModelAttribute User user,Model model) {
		try {
			service.updateUser(user);
			model.addAttribute("message","User Updated Successfully.");
		} catch (Exception e) {

		}
		return "update";
	}

	// delete functionality
	@PostMapping("/deleteUser")
	public String Delete(@RequestParam("UserId") int userId,Model model) {
		try {
			service.deleteUser(userId);
			model.addAttribute("message","User Deleted Successfully.");
		} catch (Exception e) {
		}
		return "delete";

	}

}

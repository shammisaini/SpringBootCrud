package ducat.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ducat.employee.service.EmployeeService;
import ducat.model.Employee;
import ducat.repository.EmployeeRepository;

@Controller
public class AdminController {

	@Autowired
	private EmployeeRepository employeeRepository;

	@Autowired
	private EmployeeService employeeService;

	@GetMapping("/")
	public String homePage() {
		return "index";
	}

	@GetMapping("/showForm")
	public String EmpForm(Employee employee) {
		return "showForm";
	}

	@PostMapping("/addForm")
	public String EmpAddForm(@Valid Employee employee, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "showForm";
		}

		// employeeRepository.save(employee);
		employeeService.saveEmployee(employee);
		return "redirect:list";
	}

	@GetMapping("/list")
	public String showDataForm(Model model) {

		// List <Employee> emp = employeeRepository.findAll();
		// model.addAttribute("",emp);
		model.addAttribute("employees", employeeRepository.findAll());
		return "showData";
	}

	@GetMapping("/empedit/{id}")
	public String showUpdateForm(@PathVariable("id") long id, Model model) {
		System.out.println("id is ..." + id);
		Employee employee = employeeRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Invalid student Id:" + id));
		model.addAttribute("employees", employee);
		return "updateEmployee";
	}

	@PostMapping("/empupdate/{id}")
	public String updateEmployee(@PathVariable("id") long id, @Valid Employee employee, BindingResult result,
			Model model) {
		if (result.hasErrors()) {
			// employee.setId(id);
			return "updateEmployee";
		}
		System.out.println("" + employee);
		employeeRepository.save(employee);
		// model.addAttribute("employees", employeeRepository.findAll());
		return "redirect:/list";
	}

	

	@GetMapping("empdelete/{id}")
	public String deleteStudent(@PathVariable("id") long id, Model model) {
		Employee employee = employeeRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Invalid student Id:" + id));
		employeeRepository.delete(employee);
		model.addAttribute("employees", employeeRepository.findAll());
		return "showData";
	}

	

	
}

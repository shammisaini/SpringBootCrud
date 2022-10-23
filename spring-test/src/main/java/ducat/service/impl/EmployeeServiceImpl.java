package ducat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ducat.employee.service.EmployeeService;
import ducat.model.Employee;
import ducat.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	EmployeeRepository employeeRepository;

	@Override
	public Employee saveEmployee(Employee employee) {
		
		employeeRepository.save(employee);
		return employee;
		
		
	}

}

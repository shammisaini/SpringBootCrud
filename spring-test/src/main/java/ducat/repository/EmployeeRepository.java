package ducat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import ducat.model.Employee;

@Repository

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
	
	
	

}

package regForm.common;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	@Transactional
	public void addUser(User u) {
		this.userDAO.addUser(u);
	}

	@Override
	@Transactional
	public List<User> getUsers() {
		List<User> dateOrderedList = this.userDAO.getUsers();
		Collections.sort(dateOrderedList, new Comparator<User>() {
	        @Override
	        public int compare(User object1, User object2) {
	            return (int) (object2.getCreateDate().compareTo(object1.getCreateDate()));
	        }
	    });
		return dateOrderedList;
	}
}

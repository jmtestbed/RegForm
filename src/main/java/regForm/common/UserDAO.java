package regForm.common;

import java.util.List;

public interface UserDAO {

	public void addUser(User u);
	public List<User> getUsers();
}

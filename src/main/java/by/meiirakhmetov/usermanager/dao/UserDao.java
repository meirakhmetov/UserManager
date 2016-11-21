package by.meiirakhmetov.usermanager.dao;

import by.meiirakhmetov.usermanager.model.User;

import java.util.List;

/**
 * Created by Мейир on 21.11.2016.
 */
public interface UserDao {
    public void addUser(User user);

    public void updateUser(User user);

    public void removeUser(int id);

    public User getUserById(int id);

    public List<User> listUsers();

    public List<User> searchUser(int id);
}

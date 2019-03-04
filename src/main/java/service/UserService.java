package service;

import model.Gender;
import model.User;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class UserService {
    private final static Map<Integer, User> users = new HashMap<>();

    public static void addUser(String name, String surname, String age, Gender gender) {
        try {
            User user = new User(name, surname, Integer.parseInt(age), gender);
            users.put(user.getId(), user);
        } catch (NumberFormatException e){

        }
    }

    public static void editUser(int id, String name, String surname, String age, Gender gender) {
        User user = users.get(id);
        user.setGender(gender);
        user.setSurname(surname);
        user.setName(name);
        user.setAge(Integer.parseInt(age));
    }

    public static void deleteUser(int id){
        users.remove(id);
    }

    public static Collection<User> getAllUsers() {
        return users.values();

    }

    public static User getUser(int id){
        return users.get(id);
    }





}

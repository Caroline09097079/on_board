package md.amsoft.onboard.dao;

import md.amsoft.onboard.model.Student;
import md.amsoft.onboard.util.ConnectionManager;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {

    private AdressDao adressDao;

    private GroupDao groupDao;

    public StudentDao() {
        adressDao = new AdressDao();
        groupDao = new GroupDao();
    }

    public List<Student> findAll() {
        Statement statement = null;
        ResultSet result = null;
        List<Student> students = new ArrayList<>();

        try {
            statement = ConnectionManager.conn().createStatement();
            result = statement.executeQuery("select * from person p left join student s on p.id = s.id");

            while (result.next()) {
                Student student = new Student();
                student.setDob(result.getDate("dob").toLocalDate());
                student.setFirstname(result.getString("first_name"));
                student.setAddress(adressDao.findOneById(result.getLong("address_id")));
                student.setGroup(groupDao.findOneById(result.getLong("group_id")));
                students.add(student);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            ConnectionManager.closs(statement, result);
        }

        return students;
    }
}

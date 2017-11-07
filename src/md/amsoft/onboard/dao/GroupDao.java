package md.amsoft.onboard.dao;

import md.amsoft.onboard.model.Group;
import md.amsoft.onboard.util.ConnectionManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GroupDao {

    public Group findOneById(Long id) {
        PreparedStatement statement;
        Group group = null;

        try {
            statement = ConnectionManager.conn().prepareStatement("select * from groupp where id =K;
            statement.setLong(1, id);
            ResultSet result = statement.executeQuery();
            result.next();

            group = new Group();
            group.setName(result.getString("name"));

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return group;
    }

}

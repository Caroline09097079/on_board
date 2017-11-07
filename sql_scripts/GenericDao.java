package md.amsoft.onboard.dao;

import md.amsoft.onboard.model.Adress;
import md.amsoft.onboard.model.Group;
import md.amsoft.onboard.util.ConnectionManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public abstract class GenericDao <T> {

    private static Map<Class, String> TABLED_MAP = new HashMap<>();

    static {
        TABLED_MAP.put(Group.class, "groupp");
        TABLED_MAP.put(Adress.class, "address");
    }

    private Class<T> clazz;

    public GenericDao(Class<T> clazz) {
        this.clazz = clazz;
    }

    public T findOneById(Long id) {
        PreparedStatement statement;
        T model = null;

        try {
            statement = ConnectionManager.conn().prepareStatement("select * from " + TABLED_MAP.get(clazz) + " where id = ?");
            statement.setLong(1, id);
            ResultSet result = statement.executeQuery();
            result.next();

            model = buildModelByResult(result);

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return model;
    }

    public abstract T buildModelByResult(ResultSet result) throws SQLException;
}

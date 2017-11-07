package md.amsoft.onboard.dao;

import md.amsoft.onboard.model.Adress;
import md.amsoft.onboard.util.ConnectionManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdressDao {

    public Adress findOneById(Long id) {
        PreparedStatement statement;
        Adress adress = null;

        try {
            statement = ConnectionManager.conn().prepareStatement("select * from address where id = ?");
            statement.setLong(1, id);
            ResultSet result = statement.executeQuery();
            result.next();

            adress = new Adress();
            adress.setAdress(result.getString("address"));
            adress.setCity(result.getString("city"));
            adress.setCountry(result.getString("country"));

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return adress;
    }

}

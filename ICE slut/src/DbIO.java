import java.sql.*;
import java.util.ArrayList;

public class DbIO {

    Statement statement = null;

    public ArrayList<Meal> generateMeals(){
        ArrayList<Meal> meals = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ice", "root", "cph-ab529@cphbusiness.dk");

            //Generating each meal
            statement = connection.createStatement();
            String sql = "SELECT * FROM dishes";
            ResultSet rs = statement.executeQuery(sql);

            while(rs.next()) {
                int dishId = rs.getInt("dishID");
                String dishName = rs.getString("dishName");
                String favorite = rs.getString("favorite");
                String description = rs.getString("description");
                String type = rs.getString("type");

                Meal meal = new Meal(dishName,type);
                meal.setDescription(description);
                meal.setFavorite(favorite);
                meals.add(meal);

                //Generating all ingredients for each Meal
                String ingredient = "SELECT * FROM collector JOIN ingredients ON collector.ingID = ingredients.ingID  WHERE collector.dishID = ?";
                PreparedStatement statement = connection.prepareStatement(ingredient);
                statement.setInt(1, dishId);
                ResultSet result = statement.executeQuery();

                while(result.next()){
                        String ingredientName = result.getString("ingName");
                        String ingredientUnit = result.getString("unit");
                        String ingredientEnergyUnit = result.getString("energyUnit");
                        float ingredientUnitValue = result.getFloat("unitValue");

                        // Calculate total energy of meal, based on ingredients
                        int ingredientEnergyPrUnit = result.getInt("energyValue");
                            float ingredientEnergyValue = ingredientUnitValue * ingredientEnergyPrUnit;
                                meal.setTotalEnergy(ingredientEnergyValue);

                        meal.addIngredient(ingredientName,ingredientUnitValue,ingredientUnit,ingredientEnergyValue,ingredientEnergyUnit);
                    }
            }
            connection.close();

        } catch(SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return meals;
    }
}

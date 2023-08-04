import 'package:burger_house/constants/bread_type.dart';
import 'package:burger_house/model/ingredient.dart';

abstract class BreadFactory {
  static List<Ingredient> getIngredient(BreadType type) {
    switch (type) {
      case BreadType.breadOne:
        return [
          Ingredient("Bread One Top", "img/breads/bread_one_top.png"),
          Ingredient("Bread One Bottom", "img/breads/bread_one_bottom.png")
        ];

      case BreadType.breadTwo:
        return [
          Ingredient("Bread Two Top", "img/breads/bread_two_top.png"),
          Ingredient("Bread Two Bottom", "img/breads/bread_two_bottom.png")
        ];

      case BreadType.breadThree:
        return [
          Ingredient("Bread Three Top", "img/breads/bread_three_top.png"),
          Ingredient("Bread Three Bottom", "img/breads/bread_three_bottom.png")
        ];

      default:
        throw Exception("Invalid Type Bread");
    }
  }
}

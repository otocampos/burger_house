import '../constants/cheese_type.dart';
import '../model/ingredient.dart';

abstract class CheeseFactory {
  static Ingredient getIngredient(CheeseType type) {
    switch (type) {
      case CheeseType.cheese1:
        return Ingredient("Cheese 1", "img/cheese/cheese1.png");
      case CheeseType.cheese2:
        return Ingredient("Cheese 1", "img/cheese/cheese2.png");

      default:
        throw Exception("Invalid Type Cheese");
    }
  }
}

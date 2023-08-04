import 'package:burger_house/constants/burger_type.dart';
import 'package:burger_house/model/ingredient.dart';

abstract class MeatFactory {
  static Ingredient getIngredient(BurgerType type) {
    switch (type) {
      case BurgerType.breadedFish:
        return Ingredient("Breaded Fish", "img/burger/breaded_fish.png");
      case BurgerType.burger:
        return Ingredient("Burger", "img/burger/burger.png");
      case BurgerType.chicken:
        return Ingredient("Chicker", "img/burger/chicken.png");
      case BurgerType.fish:
        return Ingredient(" Fish", "img/burger/fish.png");
      case BurgerType.meat:
        return Ingredient("Meat", "img/burger/meat.png");
      case BurgerType.veggieBurger:
        return Ingredient("Veggie Burger", "img/burger/veggie_burger.png");
      default:
        throw Exception("Invalid Type Meat");
    }
  }
}

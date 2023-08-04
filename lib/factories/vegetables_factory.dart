import 'package:burger_house/constants/burger_type.dart';

import '../constants/vegetables_type.dart';
import '../model/ingredient.dart';

abstract class VegetablesFactory {
  static Ingredient getIngredient(VegetablesType type) {
    switch (type) {
      case VegetablesType:
        return Ingredient("Fryed", "img/vegetables/fryed_onions.png");
      case VegetablesType.lettuce:
        return Ingredient("Lettuce", "img/vegetables/lettuce.png");
      case VegetablesType.mushroom:
        return Ingredient("Mushroom", "img/vegetables/mushroom.png");
      case VegetablesType.onions:
        return Ingredient(
            "Onions", "img/vegetables/onions.png");
      case BurgerType.veggieBurger:
        return Ingredient("Veggie", "img/vegetables/onions.png");
      case VegetablesType.picles:
        return Ingredient(
            "Picles", "img/vegetables/picles.png");
      case VegetablesType.tomatoes:
        return Ingredient(
            "Tomatoes", "img/vegetables/tomatoes.png");
      default:
        throw Exception("Invalid Type Vegetables");
    }
  }
}
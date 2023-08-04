import '../constants/sauces_type.dart';
import '../model/ingredient.dart';

abstract class SauceFactory {
  static Ingredient getIngredient(SaucesType type) {
    switch (type) {
      case SaucesType.ketchup:
        return Ingredient("Ketchup", "img/sauces/ketchup.png");
      case SaucesType.mayo:
        return Ingredient("Mayonnaise", "img/sauces/mayo.png");
      case SaucesType.mostard:
        return Ingredient("Mostard", "img/sauces/mostard.png");
      case SaucesType.seasonedMayo:
        return Ingredient("Seasoned Mayo", "img/sauces/seasoned_mayo.png");
      case SaucesType.specialSauce:
        return Ingredient("Special Sauce", "img/sauces/special_sauce.png");

      default:
        throw Exception("Invalid Type Suces");
    }
  }
}

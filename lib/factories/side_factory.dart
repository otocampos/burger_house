import '../constants/side.dart';
import '../model/ingredient.dart';

abstract class SideFactory {
  static Ingredient getIngredient(SideType type) {
    switch (type) {
      case SideType.avocado:
        return Ingredient("Avocado", "img/side/avocado.png");
      case SideType.bacon:
        return Ingredient("Bacon", "img/side/bacon.png");
        case SideType.greenPepper:
        return Ingredient("Green Pepper", "img/side/green_pepper.png");
        case SideType.ham:
        return Ingredient("Ham", "img/side/ham.png");
        case SideType.oneEgg:
        return Ingredient("One Egg", "img/side/one_egg.png");
      case SideType.redPepper:
        return Ingredient("Red Pepper", "img/side/red_pepper.png");
        case SideType.twoEggs:
        return Ingredient("Two Eggs", "img/side/two_eggs.png");
      default:
        throw Exception("Invalid Type sides");
    }
  }
}

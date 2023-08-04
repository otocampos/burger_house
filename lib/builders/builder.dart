import '../model/ingredient.dart';

abstract class Builder {
  set breads(List<Ingredient> breads);
  set burgers(List<Ingredient> burgers);
  set cheeses(List<Ingredient> cheeses);
  set sauces(List<Ingredient> sauce);
  set sides(List<Ingredient> sides);
  set vegetables(List<Ingredient> salad);

}

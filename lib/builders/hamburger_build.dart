import 'package:burger_house/builders/builder.dart';
import 'package:burger_house/model/ingredient.dart';

class HamburgerBuild implements Builder {
  @override
  List<Ingredient>? breads;

  @override
  List<Ingredient>? burgers;

  @override
  List<Ingredient>? cheeses;

  @override
  List<Ingredient>? sauces;

  @override
  List<Ingredient>? sides;

  @override
  List<Ingredient>? vegetables;

  List<Ingredient?> getHamburger() {



    List<Ingredient?> list = [
    if (breads?.first != null)breads?.last,
    if (burgers?.first!= null) burgers?.first,
    if (sauces?.first!= null) sauces?.first,
    if ( cheeses?.first!= null)  cheeses?.first,
      if ( sides?.first != null)   sides?.first,
      if ( vegetables?[0]!= null)  vegetables?[0],
      if ( vegetables?[1] != null) vegetables?[1],
      if ( vegetables?[2] != null) vegetables?[2],
      if (burgers?.last != null)  burgers?.last,
    if ( cheeses?.last != null)   cheeses?.last,
    if ( sides?.last != null)   sides?.last,
    if ( sauces?.first != null)  sauces?.last,
    if (  breads?.last != null)  breads?.first
    ];



    return list;

    [
      breads?.first,
      burgers?.first,
      sauces?.first,
      cheeses?.first,
      vegetables?.first,
      burgers?.last,
      cheeses?.last,
      sauces?.first,
      vegetables?.last,
      breads?.last
    ];
  }

  @override
  String toString() {
    return 'HamburgerBuild{breads: $breads, burgers: $burgers, cheeses: $cheeses, sauces: $sauces, sides: $sides, vegetables: $vegetables}';
  }
}

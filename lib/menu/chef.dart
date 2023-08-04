import 'package:burger_house/builders/builder.dart';
import 'package:burger_house/constants/bread_type.dart';
import 'package:burger_house/constants/burger_type.dart';
import 'package:burger_house/constants/cheese_type.dart';
import 'package:burger_house/constants/sauces_type.dart';
import 'package:burger_house/constants/side.dart';
import 'package:burger_house/constants/vegetables_type.dart';
import 'package:burger_house/factories/bread_factory.dart';
import 'package:burger_house/factories/cheese_factory.dart';
import 'package:burger_house/factories/meat_factory.dart';
import 'package:burger_house/factories/sauces_factory.dart';
import 'package:burger_house/factories/side_factory.dart';
import 'package:burger_house/factories/vegetables_factory.dart';
import 'package:burger_house/utils/apply.dart';

class Chef {
  ///How to create a big mac with code by Oto

  createBigMac(Builder builder) {
    builder.apply((builder) {
      builder
        ..breads = BreadFactory.getIngredient(BreadType.breadOne)
        ..burgers = [
          MeatFactory.getIngredient(BurgerType.burger),
          MeatFactory.getIngredient(BurgerType.burger)
        ]
        ..sauces = [
          SauceFactory.getIngredient(SaucesType.mayo),
          SauceFactory.getIngredient(SaucesType.mayo)
        ]
        ..cheeses = [
          CheeseFactory.getIngredient(CheeseType.cheese2),
          CheeseFactory.getIngredient(CheeseType.cheese2)
        ]
        ..vegetables = [
          VegetablesFactory.getIngredient(VegetablesType.lettuce),
          VegetablesFactory.getIngredient(VegetablesType.onions),
          VegetablesFactory.getIngredient(VegetablesType.picles),
        ];
    });
  }

  createXTudo(Builder builder) {
    builder.breads = BreadFactory.getIngredient(BreadType.breadOne);
    builder.burgers = [
      MeatFactory.getIngredient(BurgerType.burger),
      MeatFactory.getIngredient(BurgerType.burger)
    ];
    builder.sauces = [
      SauceFactory.getIngredient(SaucesType.ketchup),
      SauceFactory.getIngredient(SaucesType.seasonedMayo)
    ];
    builder.cheeses = [
      CheeseFactory.getIngredient(CheeseType.cheese1),
      CheeseFactory.getIngredient(CheeseType.cheese2)
    ];
    builder.vegetables = [
      VegetablesFactory.getIngredient(VegetablesType.lettuce),
      VegetablesFactory.getIngredient(VegetablesType.tomatoes)
    ];
    builder.sides = [
      SideFactory.getIngredient(SideType.twoEggs),
      SideFactory.getIngredient(SideType.bacon)
    ];
  }
}

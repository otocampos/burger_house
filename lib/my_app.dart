import 'dart:async';
import 'dart:math';

import 'package:burger_house/builders/hamburger_build.dart';
import 'package:burger_house/model/ingredient.dart';
import 'package:flutter/material.dart';

import 'menu/chef.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Ingredient?> ingredientsList2 = [];

  @override
  void initState() {
    super.initState();
    Chef chief = Chef();
    final builder = HamburgerBuild();
    chief.createBigMac(builder);
    ingredientsList2 = builder.getHamburger();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PlateAnimation(),
          AnimatedIngredientsFall(ingredientsList2),
        ],
      ),
    );
  }
}

class PlateAnimation extends StatefulWidget {
  const PlateAnimation({super.key});

  @override
  State<PlateAnimation> createState() => _PlateAnimationState();
}

class _PlateAnimationState extends State<PlateAnimation> {
  bool _start = false;

  @override
  void initState() {
    animatePlate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        left: !_start ? -300 : 25,
        duration: Duration(seconds: 1),
        child: Image(image: AssetImage("img/plate.png")));
  }

  animatePlate() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      _start = true;
    });
  }
}

class AnimatedIngredientsFall extends StatefulWidget {
  final List<Ingredient?> ingredientsList;

  AnimatedIngredientsFall(this.ingredientsList);

  @override
  _AnimatedIngredientsFallState createState() =>
      _AnimatedIngredientsFallState();
}

class _AnimatedIngredientsFallState extends State<AnimatedIngredientsFall> {
  List<Ingredient?> displayedIngredients = [];

  @override
  void initState() {
    super.initState();
    animateIngredients();
  }

  void animateIngredients() async {
    await Future.delayed(Duration(seconds: 1));
    for (int i = 0; i < widget.ingredientsList.length; i++) {
      await Future.delayed(Duration(milliseconds: 800));
      setState(() {
        displayedIngredients.add(widget.ingredientsList[i]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: displayedIngredients.map((ingredient) {
        int index = displayedIngredients.indexOf(ingredient);
        double topPosition = (index * 18.0);
        return Container(
          child: Positioned(
              bottom: topPosition,
              child: InkWell(
                onTap: () {
                  print("${displayedIngredients[index]?.name}");
                },
                child: Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      image: AssetImage(
                        displayedIngredients[index]?.img ?? "",
                      ),
                    ),
                  ),
                ),
              )),
        );
      }).toList(),
    );
  }
}

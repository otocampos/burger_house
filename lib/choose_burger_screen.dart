import 'package:burger_house/my_app.dart';
import 'package:burger_house/theme/text_style.dart';
import 'package:flutter/material.dart';

class ChooseBurgerScreen extends StatefulWidget {
  const ChooseBurgerScreen({super.key});

  @override
  State<ChooseBurgerScreen> createState() => _ChooseBurgerScreenState();
}

class _ChooseBurgerScreenState extends State<ChooseBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.redAccent,
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(flex: 2, child: Text("Big Mac",style:BurgerHouseTextStyle.title,)),

      Flexible(flex: 2, child: MyApp()),
    ])));
  }
}

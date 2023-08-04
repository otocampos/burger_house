import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerHouseTextStyle {
  static  TextStyle headline = TextStyle(
    fontFamily: GoogleFonts.bangers().toString(),
    fontSize: 40,
    color: Colors.orange,
    fontWeight: FontWeight.bold,
  );

  static  TextStyle title = TextStyle(
    fontFamily: GoogleFonts.bangers().toString(),
    fontSize: 50,
    color: Colors.yellow,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: 'Bangers',
    fontSize: 24,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle description = TextStyle(
    fontFamily: 'Bangers',
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'Bangers',
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

// theme
Color background_primary = const Color(0xFF111015);
Color accent_t = const Color(0xFF34323A);
Color inactive_accent = const Color(0xFF494949);
Color accent_secondary = const Color(0xFF00FFD1);
Color black = const Color(0xff060D20);
Color yellow = const Color(0xffFEB800);
Color gray = const Color(0xff9CA0A4);
Color white = const Color(0xffffffff);
Color backgroundPrimary = const Color(0xFF111015);
Color accentT = const Color(0xFF34323A);
Color inactiveAccent = const Color(0xFF494949);
Color accentSecondary = const Color(0xFF00FFD1);
Color iconColors = Colors.white;
Color main_color = const Color(0xFF982F46);
Color light_white = const Color(0xFFFFFFFF);
Color secondary = Color.fromARGB(255, 248, 156, 181);

// --- new color --
Color newPrimary = const Color(0xFFFD3B60);
Gradient newGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFD3B60), // Start color (#fd3b60)
    Color(0xFFFF4d4d),
    Color(0xFFFE5048), // End color (#fe5048)
  ],
);

const TextStyle voteAvg = TextStyle(
  color: Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.w500,
);
//------ Strings -----
const List<String> profileTitle = ['Basic Information','Education','Location','Profile Description'];
const List<String> basicInformationTitle = ['Name','Religion','Belief','Gender','Age','DOB','Marital Status'];
const List<IconData> profileIcon = [Icons.girl_rounded,Icons.book,Icons.location_on,Icons.keyboard_double_arrow_right_outlined];


import 'package:flutter/material.dart';

class Size {
  Size._();
  static double getHeight;
  static double getWidth;
  static double scaleTxt;
  static double statusBar;
  static double padding;
}

void getSizeApp(BuildContext context) {
  Size.getHeight = MediaQuery.of(context).size.height;
  Size.getWidth = MediaQuery.of(context).size.width;
  Size.scaleTxt = MediaQuery.of(context).textScaleFactor;
  Size.statusBar = MediaQuery.of(context).padding.top;
  print("getSizeApp Width: " + Size.getWidth.toString());
  print("getSizeApp Height: " + Size.getWidth.toString());
}



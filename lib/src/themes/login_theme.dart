import 'package:flutter/material.dart';

class  LoginTheme{
  const LoginTheme();
  static const beginColor = const Color(0xFFfbab66);
  static const endColor = const Color(0xFFf7418c);

  static const gradient = const LinearGradient(
    colors: const [beginColor, endColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );

//  Color();
}
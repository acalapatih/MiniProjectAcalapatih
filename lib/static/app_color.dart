import 'package:flutter/material.dart';

enum AppColor {
  light("light", Colors.white),
  dark("dark", Colors.black);

  final String name;
  final Color color;

  const AppColor(this.name, this.color);
}
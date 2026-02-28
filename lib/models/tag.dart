import 'package:flutter/material.dart';

class Tag {
  String id;
  String name;
  int colorValue;

  Tag({required this.id, required this.name, this.colorValue = 0xFF42A5F5});

  Color get color => Color(colorValue);
}

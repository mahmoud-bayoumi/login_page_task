import 'package:flutter/material.dart';

class TextModel {
  final String message;
  final double fontSize;
  final FontWeight fontWeight;
  const TextModel(
      {required this.fontSize,
      required this.fontWeight,
      required this.message});
}

import 'package:flutter/material.dart';
import 'package:tasks/models/text_model.dart';

class TextWidget extends StatelessWidget {
  final TextModel textModel;
  const TextWidget({super.key, required this.textModel});

  @override
  Widget build(BuildContext context) {
    return Text(
      textModel.message,
      style: TextStyle(
          fontSize: textModel.fontSize, fontWeight: textModel.fontWeight),
    );
  }
}

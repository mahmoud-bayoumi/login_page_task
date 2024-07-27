import 'package:flutter/material.dart';
import 'package:tasks/models/login_models/text_model.dart';

class TextWidget extends StatelessWidget {
  final TextModel textModel;
  const TextWidget({super.key, required this.textModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: textModel.message == 'Please sign in to continue.' ? 80 : null,
      width: double.infinity,
      child: Text(
        textModel.message,
        style: TextStyle(
            fontSize: textModel.fontSize, fontWeight: textModel.fontWeight),
      ),
    );
  }
}

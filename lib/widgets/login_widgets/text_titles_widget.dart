import 'package:flutter/material.dart';
import 'package:tasks/models/login_models/text_model.dart';
import 'package:tasks/widgets/login_widgets/text_widget.dart';

class TextTitlesWidget extends StatelessWidget {
  final List<TextModel> textModels = const [
    TextModel(fontSize: 43, fontWeight: FontWeight.bold, message: 'Login'),
    TextModel(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        message: 'Please sign in to continue.'),
  ];
  const TextTitlesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(textModel: textModels[0]),
        TextWidget(textModel: textModels[1]),
      ],
    );
  }
}

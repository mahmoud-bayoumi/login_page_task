import 'package:flutter/material.dart';
import 'package:tasks/models/login_models/text_form_field_model.dart';
import 'package:tasks/widgets/login_widgets/text_form_field_widget.dart';

class TextFormFieldsWidget extends StatelessWidget {
  final List<TextFormFieldModel> textFormFieldModels = const [
    TextFormFieldModel(hintText: 'email address'),
    TextFormFieldModel(
        hintText: 'password', suffixIconStatus: true, isPass: true)
  ];
  const TextFormFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldWidget(textFormFieldModel: textFormFieldModels[0]),
        TextFormFieldWidget(textFormFieldModel: textFormFieldModels[1]),
      ],
    );
  }
}

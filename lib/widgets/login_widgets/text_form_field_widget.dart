import 'package:flutter/material.dart';
import 'package:tasks/models/login_models/text_form_field_model.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatefulWidget {
  final TextFormFieldModel textFormFieldModel;

  const TextFormFieldWidget({super.key, required this.textFormFieldModel});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: widget.textFormFieldModel.isPass ? 50 : 10),
      child: TextFormField(
          obscureText:
              widget.textFormFieldModel.isPass ? passwordVisibility : false,
          decoration: InputDecoration(
            hintText: widget.textFormFieldModel.hintText,
            icon: widget.textFormFieldModel.isPass
                ? const Icon(Icons.lock)
                : const Icon(Icons.email),
            suffixIcon: widget.textFormFieldModel.suffixIconStatus
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    icon: passwordVisibility
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off))
                : null,
          )),
    );
  }
}

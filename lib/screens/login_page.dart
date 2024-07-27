import 'package:flutter/material.dart';
import 'package:tasks/widgets/login_widgets/forgot_password_widget.dart';
import 'package:tasks/widgets/login_widgets/login_button_widget.dart';
import 'package:tasks/widgets/login_widgets/sign_up_widget.dart';
import 'package:tasks/widgets/login_widgets/text_form_fields_widget.dart';
import 'package:tasks/widgets/login_widgets/text_titles_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                TextTitlesWidget(),
                TextFormFieldsWidget(),
                LoginButton(),
                ForgotPassword(),
                SignUpWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

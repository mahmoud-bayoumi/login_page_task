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
<<<<<<< HEAD
    return const Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
=======
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: double.infinity,
                child: TextWidget(textModel: textModels[0])),
            SizedBox(
                height: 80,
                width: double.infinity,
                child: TextWidget(textModel: textModels[1])),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'email address', icon: Icon(Icons.email)),
              ),
            ),
            TextFormField(
              obscureText: passwordVisibility,
              decoration: InputDecoration(
                  hintText: 'password ',
                  icon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisibility = !passwordVisibility;
                        });
                      },
                      icon: passwordVisibility
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility))),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(const Size(150, 50))),
              child: const Text('Login'),
            ),
            TextButton(onPressed: () {}, child: const Text('Forgot password?')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
>>>>>>> c956ca8b897078747c04804f9c5ba946f1317146
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

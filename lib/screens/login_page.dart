import 'package:flutter/material.dart';
import 'package:tasks/models/text_model.dart';
import 'package:tasks/widgets/text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisibility = true;
  final List<TextModel> textModels = const [
    TextModel(fontSize: 43, fontWeight: FontWeight.bold, message: 'Login'),
    TextModel(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        message: 'Please sign in to continue.'),
  ];

  @override
  Widget build(BuildContext context) {
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
              children: [
                const Text('Don\'t have an account ? '),
                TextButton(onPressed: () {}, child: const Text('Sign up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

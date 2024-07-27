import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tasks/screens/second_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        log('AAAAAAAAAAAAAAAAAAAAAAAAAA');
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const SecondPage();
          },
        ));

        log('Here in onPressed');
      },
      style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(const Size(150, 50))),
      child: const Text('Login'),
    );
  }
}

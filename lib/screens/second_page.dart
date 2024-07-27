import 'package:flutter/material.dart';
import 'package:tasks/widgets/second_widgets/avatar_list_view.dart';
import 'package:tasks/widgets/second_widgets/grid_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              AvatarsWidget(),
              GridWidget(),
            ],
          ),
        ));
  }
}
// or custom scroll view 
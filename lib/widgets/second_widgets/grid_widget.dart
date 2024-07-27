import 'package:flutter/material.dart';
import 'package:tasks/models/second_models/avatar_model.dart';

import 'package:tasks/widgets/second_widgets/category_card.dart';

class GridWidget extends StatelessWidget {
  final List<CategoryModel> categoryList = const [
    CategoryModel(imageUrl: 'assets/images/ball_icon.png'),
    CategoryModel(imageUrl: 'assets/images/car.png'),
    CategoryModel(imageUrl: 'assets/images/computer_icon.png'),
    CategoryModel(imageUrl: 'assets/images/eraser.png'),
    CategoryModel(imageUrl: 'assets/images/gamepad.png'),
    CategoryModel(imageUrl: 'assets/images/inbox.png')
  ];

  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: categoryList.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return CategoryCard(categoryModel: categoryList[index]);
      },
    );
  }
}

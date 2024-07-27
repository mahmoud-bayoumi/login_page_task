import 'package:flutter/material.dart';
import 'package:tasks/models/second_models/avatar_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.lightBlue,
          image: DecorationImage(image: AssetImage(categoryModel.imageUrl))),
    );
  }
}
/*Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/236x/f7/dd/3f/f7dd3fddaba525403feebed0096c318a.jpg'))))
*/ 
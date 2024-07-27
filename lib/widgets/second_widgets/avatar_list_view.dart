import 'package:flutter/material.dart';
import 'package:tasks/models/second_models/avatar_model.dart';

class AvatarsWidget extends StatelessWidget {
  final List<CategoryModel> avatarModels = const [
    CategoryModel(
        imageUrl: 'assets/images/ball_icon.png', description: 'Balls'),
    CategoryModel(imageUrl: 'assets/images/car.png', description: 'Cars'),
    CategoryModel(
        imageUrl: 'assets/images/computer_icon.png', description: 'Pc'),
    CategoryModel(imageUrl: 'assets/images/eraser.png', description: 'Eraser'),
    CategoryModel(
        imageUrl: 'assets/images/gamepad.png', description: 'Game Pad'),
    CategoryModel(imageUrl: 'assets/images/inbox.png', description: 'Tele')
  ];
  const AvatarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: avatarModels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 45,
                    child: Image(
                        width: 70,
                        image: AssetImage(
                          avatarModels[index].imageUrl,
                        ))),
                Text(avatarModels[index].description!)
              ],
            ),
          );
        },
      ),
    );
  }
}

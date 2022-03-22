import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktactoezzz/controllers/game_controller.dart';

import '../themes.dart';

class ThemeButton extends StatelessWidget {
  ThemeButton({Key? key}) : super(key: key);
  GameController gameController = Get.put(GameController());
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 40,
        width: 100,
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                gameController.setLightMode();
                Get.changeTheme(Themes.light);
              },
              icon: Icon(
                CupertinoIcons.lightbulb,
                size: 20,
                color: gameController.lightMode == true
                    ? Colors.yellow
                    : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                gameController.setDarkMode();
                Get.changeTheme(Themes.dark);
              },
              icon: Icon(
                CupertinoIcons.moon,
                color: gameController.darkMode == true
                    ? Colors.deepPurpleAccent
                    : Colors.grey,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktactoezzz/controllers/game_controller.dart';
import 'package:tiktactoezzz/ui/widgets/game_widget.dart';
import 'package:tiktactoezzz/ui/widgets/play_again_button.dart';
import 'package:tiktactoezzz/ui/widgets/player_turn_widget.dart';
import 'package:tiktactoezzz/ui/widgets/result_widget.dart';
import 'package:tiktactoezzz/ui/widgets/theme_button.dart';

class TikTacToeScreen extends StatelessWidget {
  TikTacToeScreen({Key? key}) : super(key: key);

  //Access To Controller
  GameController gameController = Get.put(GameController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        //Outer container mainly acting as a background
        GetBuilder<GameController>(
      builder: (gameController) {
        return Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              gradient: gameController.darkMode == true
                  ? const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 86, 12, 182),
                        Color.fromARGB(255, 9, 23, 104),
                      ],
                    )
                  : const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 238, 22, 94),
                        Color.fromARGB(255, 92, 28, 202),
                      ],
                    ),
            ),
            child: GetBuilder<GameController>(
              builder: (gameController) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ThemeButton(),
                    const SizedBox(height: 40),
                    PlayerTurnWidget(),
                    const SizedBox(height: 20),
                    GameWidget(),
                    ResultWidget(),
                    const SizedBox(height: 20),
                    PlayAgainButton(),
                    const SizedBox(height: 40),
                  ],
                );
              },
            ));
      },
    ));
  }
}

import 'package:get/get_state_manager/get_state_manager.dart';

class GameController extends GetxController {
  //Themes
  bool lightMode = true;
  bool darkMode = false;

  //Themes Functions

  setLightMode() {
    lightMode = true;
    darkMode = false;
    update();
  }

  setDarkMode() {
    lightMode = false;
    darkMode = true;
    update();
  }
}

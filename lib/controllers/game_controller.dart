import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tiktactoezzz/models/game_model.dart';
import 'package:tiktactoezzz/models/player_model.dart';

class GameController extends GetxController {
  //Themes
  bool lightMode = true;
  bool darkMode = false;

  //Game Model
  var game = Game();
  //Game Variables
  String lastValue = 'X';
  bool gameOver = false;
  int turn = 0;
  String result = '';
  List<int> scoreBoard = [0, 0, 0, 0, 0, 0, 0, 0];

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

  // Game Functions

  void onInit() {
    super.onInit();
    game.board = initGameBoard();
    update();
    //print(game.board);
  }

  List<String>? initGameBoard() =>
      List.generate(game.boardlength, (index) => Player.empty);

  //Checking For Winner Logic
  bool winnerCheck(
      String player, int index, List<int> scoreboard, int gridSize) {
    //Row & Col
    int row = index ~/ 3;
    int col = index % 3;
    int score = player == 'X' ? 1 : -1;
    scoreBoard[row] += score;
    scoreBoard[gridSize + col] += score;
    if (row == col) {
      scoreBoard[2 * gridSize] += score;
    }
    if (gridSize - 1 - col == row) {
      scoreBoard[2 * gridSize + 1] += score;
    }

    //Check for 3 or -3 in ScoreBoard
    if (scoreBoard.contains(3) || scoreboard.contains(-3)) {
      return true;
    }
    //Default Value
    return false;
  }

  setValueToLastValue(int index) {
    //Allow Pressing Only On Empty Boxes
    if (game.board![index] == '') {
      game.board![index] = lastValue;
      turn++;
      gameOver = winnerCheck(lastValue, index, scoreBoard, 3);
      if (gameOver) {
        result = '$lastValue is the Winner';
      } else if (!gameOver && turn == 9) {
        result = 'It\'s a draw';
        gameOver = true;
      }
      //Toggeling The Between Players X & O
      if (lastValue == "X") {
        lastValue = 'O';
      } else {
        lastValue = "X";
      }
    }
    update();
  }
}

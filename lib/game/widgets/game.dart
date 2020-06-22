import 'package:flutter/material.dart';
import 'package:homework_with_todos/game/models/move_model.dart';
import 'package:homework_with_todos/game/models/selection_controller.dart';
import 'package:homework_with_todos/game/models/start_controller.dart';

class Game extends StatelessWidget {
  // TODO: look the definitions of SelectionController and StartController 
  // They are just events that trigger some methods of child widget and/or hold value
  final SelectionController playerSelectionController = SelectionController(MoveModel(move: Move.Paper));
  final SelectionController computerSelectionController = SelectionController(MoveModel(move: Move.Paper));
  final StartController animationStartController = StartController();

  Game({Key key}) : super(key: key);

  void onRoundEnd(BuildContext context) {
    if (MoveModel.canWin(playerSelectionController.value, computerSelectionController.value)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // TODO: show snackbar win message
      });
    }
    else if (MoveModel.draw(playerSelectionController.value, computerSelectionController.value)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // TODO: show snackbar draw message
      });
    }
    else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // TODO: show snackbar lost message
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // TODO: Add PlayerSelection 
        // Hint: it is biig make it small
        // Tip: You should set controller as playerSelectController
        
        // TODO: Add Button
        // Hint: set onPressed to animationStartController.start(). this will start the random animation on computer selection

        // TODO: Add Computer Selection
        // Tip: You should set controller as computerSelectController
        // Tip: You should set animationController as animationStartController
        // Tip: You should set onSelected to onRoundEnd since game will end when computer select the move
      ],
    );
  }
}
import 'package:flutter/material.dart';

import 'widgets/game.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Rock Scissors Paper"),
        ),
        body: Game(), 
      ),
    );
  }
}
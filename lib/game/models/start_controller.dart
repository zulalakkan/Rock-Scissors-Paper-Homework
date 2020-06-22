import 'package:flutter/cupertino.dart';


class StartController extends ChangeNotifier {
  void start(){
    this.notifyListeners();
  }
}
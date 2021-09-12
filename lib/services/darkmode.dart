import 'package:flutter/cupertino.dart';

class DarkModeController extends ChangeNotifier {

  static DarkModeController instance = DarkModeController();

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  Brightness getTheme() {
    return isDarkTheme ? Brightness.dark : Brightness.light;
  }
}
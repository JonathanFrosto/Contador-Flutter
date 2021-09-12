import 'package:flutter/material.dart';
import 'package:hello_world/services/darkmode.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: DarkModeController.instance.isDarkTheme,
        onChanged: (value) {
          DarkModeController.instance.changeTheme();
        }
    );
  }
}
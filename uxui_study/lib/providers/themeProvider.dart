import 'package:flutter/material.dart';

class themeProvider extends ChangeNotifier{
  String _theme = "light";

  get theme => _theme;

  void setTheme(){
    if(theme=="light")
      _theme="dark";
    else
      _theme="light";
    notifyListeners();
  }

}
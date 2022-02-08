import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier{
  bool _isLightTheme = false;
  bool get isLightTheme=>_isLightTheme;

  void changeTheme(){
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }
}
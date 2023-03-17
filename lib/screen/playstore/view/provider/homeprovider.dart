import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier
{
  int i=0;

  void selectIndex(int value)
  {
    i = value;
    notifyListeners();
    print(i);
  }
}
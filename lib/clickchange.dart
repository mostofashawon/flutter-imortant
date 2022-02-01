

import 'package:flutter/cupertino.dart';

class ClickChangeNotifier extends ChangeNotifier{
    int click = 0;

   void incrementClick(){
     click++;
     notifyListeners();
   }
}

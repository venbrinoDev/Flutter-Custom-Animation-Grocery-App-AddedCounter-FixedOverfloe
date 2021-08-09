
import 'package:flutter/cupertino.dart';

class IncrementalController with ChangeNotifier{

  int increment = 1;

 int get value =>increment;

  setValue(int Incremental){
   increment = Incremental;
 }

  void incrementValue(){
    increment = ++increment;
    notifyListeners();
  }

  void decrementValue(){
    if(!(increment<2)){
      increment =--increment;
      notifyListeners();
    }
  }

  void resetValue(){
    increment =0;
  }


}
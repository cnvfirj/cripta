import 'package:flutter/material.dart';

class CheckStates{

  static bool portrait(BuildContext context){
    return MediaQuery.maybeOf(context)!.orientation==Orientation.portrait;
  }
}
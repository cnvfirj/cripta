import 'package:cripta/help/methods.dart';
import 'package:flutter/material.dart';

class UnionWidgetData extends StatelessWidget{
  const UnionWidgetData({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    if(CheckStates.portrait(context)){
      return Column(

      );
    }else {
      return Row();
    }

  }
}

class PanelButtons extends StatelessWidget{
  const PanelButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(CheckStates.portrait(context)){
      return Row(

      );
    }else {
      return Column(

      );
    }

  }

}
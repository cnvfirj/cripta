import 'package:cripta/help/constants.dart';
import 'package:cripta/help/methods.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'actions_data.dart';

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

class Button extends StatelessWidget{

  final Color _color;
  final IconData _iconData;
  final ActionsButtonsData _action;

  Button(this._color, this._iconData, this._action{Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ButtonsDataProvider>(builder:
        (BuildContext context, ButtonsDataProvider provider, Widget? child) {

         return Expanded(
             child: Material(
                 color: _color,
                 child: InkWell(
                   splashColor: Colors.black38,
                   onTap: (){
                     provider.onTap(_action);
                   },
                   child: Icon(
                     _iconData,
                     color: GlobalColors.COLOR_TEXT,
                   ),
                 )));
    });
  }
}
import 'package:cripta/help/constants.dart';
import 'package:cripta/help/methods.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'actions_data.dart';

class UnionWidgetData extends StatelessWidget {
  const UnionWidgetData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (CheckStates.portrait(context)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:const [
         PanelButtons()
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:const [
          PanelButtons()
        ],
      );
    }
  }
}

class PanelButtons extends StatelessWidget {
  const PanelButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (CheckStates.portrait(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: panel(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: panel(),
      );
    }
  }

  List<Widget> panel() {
    return [
      const Button(GlobalColors.colorPanelButtons, Icons.clear,
          ActionsButtonsData.clear),
      const Delimiter(),
      const Button(GlobalColors.colorPanelButtons, Icons.find_in_page,
          ActionsButtonsData.find),
      const Delimiter(),
      const Button(GlobalColors.colorPanelButtons, Icons.share,
          ActionsButtonsData.share),
      const Delimiter(),
      const Button(GlobalColors.colorPanelButtons, Icons.subscriptions,
          ActionsButtonsData.encode),
      const Delimiter(),
      const Button(GlobalColors.colorPanelButtons, Icons.subscriptions_outlined,
          ActionsButtonsData.decode),
    ];
  }
}

class Button extends StatelessWidget {
  final Color _color;
  final IconData _iconData;
  final ActionsButtonsData _action;

  const Button(
    this._color,
    this._iconData,
    this._action, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ButtonsDataProvider>(builder:
        (BuildContext context, ButtonsDataProvider provider, Widget? child) {
      return Expanded(
          child: Material(
              color: _color,
              child: InkWell(
                splashColor: Colors.black38,
                onTap: () {
                  provider.onTap(_action);
                },
                child: Icon(
                  _iconData,
                  color: GlobalColors.colorText,
                ),
              )));
    });
  }
}

class Delimiter extends StatelessWidget {
  const Delimiter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GlobalSizes.delimiter,
      color: GlobalColors.colorWidgetBackground,
    );
  }
}

class EditText extends StatefulWidget{
  const EditText({Key? key}) : super(key: key);


  @override
  State createState() =>StateEditText();
}

class StateEditText extends State<EditText>{

  @override
  Widget build(BuildContext context) {
    return Consumer<EditTextDataProvider>(
      builder: (BuildContext context, EditTextDataProvider provider, Widget? child){
        return ListView(
          children:const [
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
            )
          ],
        );
      },
    );
  }
}



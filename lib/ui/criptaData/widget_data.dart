import 'package:cripta/help/constants.dart';
import 'package:cripta/help/methods.dart';
import 'package:cripta/ui/common/actions.dart';
import 'package:cripta/ui/common/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'actions_data.dart';

class UnionWidgetData extends StatelessWidget {
  const UnionWidgetData({Key? key}) : super(key: key);

  /*т ориентации вістраиваем компоненты виджета.
  * Портрет - окно ввода/вывода текста под ним горизонтальная панель кнопок
  * ландшафт - окно ввода/вывод текста с лева вертикальная панель кнопок*/
  @override
  Widget build(BuildContext context) {
    if (CheckStates.portrait(context)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:const [
         _PanelButtons()
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:const [
          _PanelButtons()
        ],
      );
    }
  }
}

class _PanelButtons extends StatelessWidget {
  const _PanelButtons({Key? key}) : super(key: key);

  /*от ориентации выстраиваем панель кнопок*/
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
      const _Button(GlobalColors.colorPanelButtons, Icons.clear,
          ActionsButtonsId.clear),
      const Delimiter(),
      const _Button(GlobalColors.colorPanelButtons, Icons.find_in_page,
          ActionsButtonsId.find),
      const Delimiter(),
      const _Button(GlobalColors.colorPanelButtons, Icons.share,
          ActionsButtonsId.share),
      const Delimiter(),
      const _Button(GlobalColors.colorPanelButtons, Icons.subscriptions,
          ActionsButtonsId.encode),
      const Delimiter(),
      const _Button(GlobalColors.colorPanelButtons, Icons.subscriptions_outlined,
          ActionsButtonsId.decode),
    ];
  }
}

/*кнопка, принимает цвет, рисунок и ее идентификаиор
* нажатие на кнопку отправляет идентификатор в
* провидер*/
class _Button extends StatelessWidget {
  final Color _color;
  final IconData _iconData;
  final ActionsButtonsId _action;

  const _Button(
    this._color,
    this._iconData,
    this._action, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ButtonsDataProvider>(builder:
        (BuildContext context, ButtonsDataProvider provider, Widget? child) {
      return PressIcon(
        color: _color,
        iconData: _iconData,
        id: _action,
        tap: (ActionsButtonsId id) { provider.onTap(id); },
        );
    });
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



import 'package:cripta/ui/common/actions.dart';
import 'package:cripta/ui/common/widgets.dart';
import 'package:cripta/ui/criptaData/widget_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'actions_key.dart';

class _PanelButtons extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
     return Container();
  }
}

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
    return Consumer<ButtonsKeyProvider>(builder:
        (BuildContext context, ButtonsKeyProvider provider, Widget? child) {
      return PressIcon(
        color: _color,
        iconData: _iconData,
        id: _action,
        tap: (ActionsButtonsId id) { provider.onTap(id); },
      );
    });
  }
}
import 'package:cripta/help/constants.dart';
import 'package:flutter/material.dart';

import 'actions.dart';

typedef Tap = Function(ActionsButtonsId id);

class PressIcon extends StatelessWidget {
  final Color _color;
  final IconData _iconData;
  final ActionsButtonsId _id;
  final Tap _tap;

  const PressIcon(
      {required Color color,
      required IconData iconData,
      required ActionsButtonsId id,
      required Tap tap,
      Key? key})
      : _color = color,
        _iconData = iconData,
        _id = id,
        _tap = tap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
            color: _color,
            child: InkWell(
              splashColor: Colors.black38,
              onTap: () {
                _tap(_id);
              },
              child: Icon(
                _iconData,
                color: GlobalColors.colorText,
              ),
            )));
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

import 'package:cripta/ui/common/widgets.dart';

enum ActionsButtonsId{
  encode,
  decode,
  share,
  find,
  clear,
  saveKey,
  loadKey,
  findKey
}


abstract class ButtonsIdProvider{
  void onTap(ActionsButtonsId id);

}


import 'package:cripta/ui/criptaData/actions_data.dart';

class PresenterInject{

  static final PresenterInject _single = PresenterInject();

  PresenterInject inst()=>_single;

  static final ButtonsDataProvider _buttonsDataProvider = ButtonsDataProvider();
  static final EditTextDataProvider _editTextDataProvider = EditTextDataProvider();

  ButtonsDataProvider get buttonsDataProvider=>_buttonsDataProvider;
  EditTextDataProvider get editTextDataProvider=>_editTextDataProvider;
}
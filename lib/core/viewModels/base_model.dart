import 'package:ai_recruiter/core/enums/viewState.dart';
import 'package:flutter/cupertino.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  ViewState get state => _state;
}

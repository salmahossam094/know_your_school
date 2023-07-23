import 'package:flutter/foundation.dart';

class MyProvider extends ChangeNotifier {
  getInfo() {
    notifyListeners();
  }
}

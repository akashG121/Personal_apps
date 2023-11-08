import 'package:flutter/material.dart';

class Index_Change extends ChangeNotifier {
  int selectedContainerIndex = 0;

  int updateSelectedIndex(int index) {
    selectedContainerIndex = index;

    notifyListeners();
    return selectedContainerIndex;// Notify the listeners of the state change.
  }
}

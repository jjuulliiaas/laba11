import 'package:flutter/material.dart';

class CornerRadiusModel with ChangeNotifier {
  double topLeft = 0.0;
  double topRight = 0.0;
  double bottomLeft = 0.0;
  double bottomRight = 0.0;

  void setTopLeft(double value) {
    topLeft = value;
    notifyListeners();
  }

  void setTopRight(double value) {
    topRight = value;
    notifyListeners();
  }

  void setBottomLeft(double value) {
    bottomLeft = value;
    notifyListeners();
  }

  void setBottomRight(double value) {
    bottomRight = value;
    notifyListeners();
  }
}

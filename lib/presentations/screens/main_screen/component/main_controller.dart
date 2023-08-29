import 'dart:async';

class MainController {
  static final MainController _singleton = MainController._internal();

  factory MainController() {
    return _singleton;
  }

  MainController._internal();

  // final scaffoldKey = GlobalKey<ScaffoldState>();
  // final pageController = PageController();

  // final customPopupMenuController = CustomPopupMenuController();

  final naveListener = StreamController<int>.broadcast();
}

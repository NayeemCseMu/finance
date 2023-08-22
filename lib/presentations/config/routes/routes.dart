import 'package:finance/presentations/screens/auth/welcome_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String splash = '/';
  static const String authenticationScreen = '/';
  static const String gptRoomScreen = '/gptRoom';
  static const String mainScreen = '/main';
  static const String walletScreen = '/wallet';
  static const String settingScreen = '/setting';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.gptRoomScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) =>  WelcomScreen());

             default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

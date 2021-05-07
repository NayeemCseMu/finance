import 'package:flutter/material.dart';
import '../../core/auth/welcome_screen.dart';
import '../../core/walk_through/walk_through.dart';
import '../../core/auth/resgistration/registration.dart';

Map<String, WidgetBuilder> routes = {
  WalkThroughScreen.routeName: (context) => WalkThroughScreen(),
  WelcomScreen.routeName: (context) => WelcomScreen(),
  RegistrationScreen.routeName: (context) => RegistrationScreen(),
};

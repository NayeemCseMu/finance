import 'package:finance/presentations/screens/accounts/linked_accounts.dart';
import 'package:finance/presentations/screens/auth/fingerprint_screen.dart';
import 'package:finance/presentations/screens/auth/set_password.dart';
import 'package:finance/presentations/screens/auth/verification_screen.dart';
import 'package:finance/presentations/screens/auth/welcome_screen.dart';
import 'package:finance/presentations/screens/onboard/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/accounts/add_card.dart';
import '../../screens/accounts/linked_acc_success.dart';
import '../../screens/accounts/moo_account.dart';
import '../../screens/auth/login_screen.dart';
import '../../screens/auth/registration.dart';

class RouteNames {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String authenticationScreen = '/authScreen';
  static const String registration = '/registration';
  static const String verification = '/verification';
  static const String mainScreen = '/main';
  static const String walletScreen = '/wallet';
  static const String settingScreen = '/setting';
  static const String fingerScreen = '/fingerScreen';
  static const String loginScreen = '/loginScreen';
  static const String setPasswordScreen = '/setPasswordScreen';
  static const String home = '/home';
  static const String linkAccount = '/linkAccount';
  static const String addLinkAccount = '/addLinkAccount';
  static const String linkAccountSuccess = '/linkAccountSuccess';
  static const String mooBank = '/mooBank';

  // static const String settingScreen = '/setting';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(
            settings: settings, builder: (_) => OnboardingScreen());
      case RouteNames.welcome:
        return MaterialPageRoute(
            settings: settings, builder: (_) => WelcomeScreen());

      case RouteNames.registration:
        return MaterialPageRoute(
            settings: settings, builder: (_) => RegistrationScreen());
      case RouteNames.verification:
        return MaterialPageRoute(
            settings: settings, builder: (_) => VerificationScreen());

      case RouteNames.fingerScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => FingerPrintScreen());
      case RouteNames.loginScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => LoginScreen());

      case RouteNames.setPasswordScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SetPasswordScreen());

      case RouteNames.linkAccount:
        return MaterialPageRoute(
            settings: settings, builder: (_) => LinkedAccountsCard());
      case RouteNames.addLinkAccount:
        return MaterialPageRoute(
            settings: settings, builder: (_) => AddLinkedAccount());
      case RouteNames.linkAccountSuccess:
        return MaterialPageRoute(
            settings: settings, builder: (_) => LinkedAccountSuccess());

      case RouteNames.mooBank:
        return MaterialPageRoute(settings: settings, builder: (_) => MooBank());

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

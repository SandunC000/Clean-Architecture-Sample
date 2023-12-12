import 'package:flutter/material.dart';
import 'package:full/core/services/biometric_authentication.dart';
import 'package:full/features/presentation/views/dashboard/dashboard.dart';
import 'package:full/features/presentation/views/menu/menu.dart';
import 'package:full/features/presentation/views/pin_page/confirm_pin_page.dart';
import 'package:full/features/presentation/views/pin_page/create_pin_page.dart';
import 'package:full/features/presentation/views/profile/profile.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static const String CREATE_PIN_PAGE = "CREATE_PIN_PAGE";
  static const String CONFIRM_PIN_PAGE = "CONFIRM_PIN_PAGE";
  static const String DASHBOARD = "DASHBOARD";
  static const String PROFILE = "PROFILE";
  static const String MENU = "MENU";
  static const String BIOMETRIC_AUTHENTICATION = "BIOMETRIC_AUTHENTICATION";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.CREATE_PIN_PAGE:
        return PageTransition(
            child: const CreatePinPage(), type: PageTransitionType.fade);
        case Routes.CONFIRM_PIN_PAGE:
        return PageTransition(
            child: ConfirmPinPage(pin: settings.arguments as String), type: PageTransitionType.fade);
      case Routes.PROFILE:
        return PageTransition(
            child: const Profile(), type: PageTransitionType.fade);
      case Routes.MENU:
        return PageTransition(
            child: const Menu(), type: PageTransitionType.fade);
      case Routes.BIOMETRIC_AUTHENTICATION:
        return PageTransition(
            child: const AuthenticationPage(), type: PageTransitionType.fade);
      case Routes.DASHBOARD:
        return PageTransition(
            child: const Dashboard(), type: PageTransitionType.fade);

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Invalid Route"),
            ),
          ),
        );
    }
  }
}

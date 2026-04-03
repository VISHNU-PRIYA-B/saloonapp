import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'create_service_screen.dart';
import 'token_page_screen.dart';
import 'service.dart';

class AppRoutes {
  static const login = '/login';
  static const signup = '/signup';
  static const createService = '/create-service';
  static const tokenPage = '/token-page';
  static const service = '/service';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case createService:
        return MaterialPageRoute(builder: (_) => const CreateServiceScreen());
      case tokenPage:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => TokenPageScreen(serviceData: args),
        );
      case service:   
        return MaterialPageRoute(builder: (_) => const ServicesPage());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}

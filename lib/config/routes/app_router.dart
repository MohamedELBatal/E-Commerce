import 'package:e_commerce/core/components/reuseable_components.dart';
import 'package:e_commerce/features/home/presentation/pages/home.dart';
import 'package:e_commerce/features/login/presentation/pages/login.dart';
import 'package:e_commerce/features/signUp/presentation/pages/signup.dart';
import 'package:flutter/material.dart';

class AppRoutesName {
  static const String login = "/";
  static const String signUp = "signUp";
  static const String home = "home";
}


class AppRoute {

  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.login:
        return MaterialPageRoute(builder: (context) =>  LoginScreen(),);
      case AppRoutesName.home:
        return MaterialPageRoute(builder: (context) =>  const HomeScreen(),);
      case AppRoutesName.signUp:
        return MaterialPageRoute(builder: (context) =>   SignUpScreen(),);

      default:
        return MaterialPageRoute(builder: (context) => unDefineRoute(),);
    }
  }
}
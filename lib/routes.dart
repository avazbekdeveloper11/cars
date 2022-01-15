import 'package:cars/screens/enterence_page/show_logo.dart';
import 'package:cars/screens/filter/showList/showList.dart';
import 'package:cars/screens/filter/showList/show_car/show_car.dart';
import 'package:cars/screens/home_page/home_page.dart';
import 'package:cars/screens/sigin_up/sign_up.dart';
import 'package:cars/screens/sign_in/passwod/password.dart';
import 'package:cars/screens/sign_in/sign_in.dart';
import 'package:cars/screens/filter/filter.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static generateRouter(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const showPage());
      case "/sign_in":
        return MaterialPageRoute(builder: (_) => SignIn());
      case "/password":
        return MaterialPageRoute(builder: (_) => const Password());
      case "/sign_up":
        return MaterialPageRoute(builder: (_) => const SignUp());
      case "/home_page":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/filter":
        return MaterialPageRoute(builder: (_) => const FilterPage());
      case "/showList":
        return MaterialPageRoute(builder: (_) => const ShowList());
      case "/showCar":
        return MaterialPageRoute(builder: (_) => const ShowCar());
    }
  }
}

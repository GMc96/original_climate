import 'package:flutter/material.dart';
import 'package:original_climate/sections/home.dart';
import 'package:original_climate/sections/info.dart';
import 'package:original_climate/sections/planner.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const UserHome());
      case '/info':
        return MaterialPageRoute(builder: (_) => const Info());
      case '/planner':
        return MaterialPageRoute(builder: (_) => const Planner());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

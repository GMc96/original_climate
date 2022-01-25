import 'package:flutter/material.dart';
import 'package:original_climate/sections/home.dart';
import 'package:original_climate/sections/info.dart';
import 'package:original_climate/sections/maps.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/info':
        return MaterialPageRoute(builder: (_) => const Info());
      case '/map':
        return MaterialPageRoute(builder: (_) => const Maps());
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

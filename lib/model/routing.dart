import 'package:devdevil/view/welcome/welcome.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Welcome.routeNamed:
      return MaterialPageRoute(
        builder: (_) => const Welcome(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not exist"),
          ),
        ),
      );
  }
}

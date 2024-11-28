import 'package:devdevil/view/auth/sign_in/sign_in.dart';
import 'package:devdevil/view/auth/sign_up/sign_up.dart';
import 'package:devdevil/view/welcome/welcome.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Welcome.routeNamed:
      return MaterialPageRoute(
        builder: (_) => const Welcome(),
      );
    case SignUp.routeNamed:
      return MaterialPageRoute(
        builder: (_) => const SignUp(),
      );
    case SignIn.routeNamed:
      return MaterialPageRoute(
        builder: (_) => const SignIn(),
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

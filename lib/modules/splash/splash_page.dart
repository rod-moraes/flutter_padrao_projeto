import 'package:flutter/material.dart';
import '/core/core.dart';

class SplashPage extends StatelessWidget {
  final bool redirect;
  const SplashPage({
    Key? key,
    required this.redirect,
  }) : super(key: key);

  void redirectSplash(BuildContext context) =>
      Future.delayed(const Duration(seconds: 3)).then((value) =>
          Navigator.pushNamedAndRemoveUntil(
              context, RouterClass.splash, (Route<dynamic> route) => false));

  @override
  Widget build(BuildContext context) {
    if (redirect) redirectSplash(context);

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("Splash Page")),
    );
  }
}

import 'package:flutter/material.dart';
import '/core/config/app_config_page.dart';
import '/modules/splash/splash_page.dart';

class RouterClass {
  //STRINGS DAS ROTAS
  static const String initial = "/";
  static const String splash = "/splash";

  //FUNÇÃO DE GERAÇÃO DE ROTAS
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
    //PROCURA A ROTA
    switch (settings.name) {
      //ROTA DA SPLASH
      case splash:
        return MaterialPageRoute(
            builder: (_) => const SplashPage(redirect: true));

      //ROTA COM INICIAL DE CONFIGURAÇÕES
      case initial:
        return MaterialPageRoute(builder: (_) => const AppConfigPage());

      //ROTA CASO NÃO ACHE ROTA
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('Não há rota definida para ${settings.name}')),
          ),
        );
    }
  }
}

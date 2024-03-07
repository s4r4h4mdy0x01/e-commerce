import 'package:e_commerce/ui/screens/auth_screen.dart';
import 'package:e_commerce/ui/screens/splash_screen.dart';
import 'package:e_commerce/utils/routes.dart';
import 'package:flutter/material.dart';

class RouteGenerate {
 static Route<dynamic> onGenerate(RouteSettings settings){
   switch(settings.name){
    case AppRoute.auth:
     return MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      );
    case AppRoute.splashScreen:
    default:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );

   }
 }
}

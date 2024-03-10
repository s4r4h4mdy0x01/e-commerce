import 'package:e_commerce/utils/app_string.dart';
import 'package:e_commerce/utils/router.dart';
import 'package:e_commerce/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.title,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
        primaryColor: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //  elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle()),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerate.onGenerate,
      initialRoute: AppRoute.authRoute,
    );
  }
}

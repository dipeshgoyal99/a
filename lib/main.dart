import 'package:flutter/material.dart';
import 'package:amazon_clone_app/constants/global_variable.dart';
import 'package:amazon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MKG Clone',
      theme: ThemeData(
       scaffoldBackgroundColor: GlobalVariables.backgroundColor,
       colorScheme: const ColorScheme.light(
        primary: GlobalVariables.secondaryColor,
       ),
       appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
           ),
          ),
        ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login-screen.dart';
import 'forget-password.dart';
import 'create-new-account.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneHealthWellness',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        'ForgetPassword': (context) => ForgetPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
      },
    );
  }
}

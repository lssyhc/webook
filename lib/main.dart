import 'package:flutter/material.dart';
import 'package:flutter_application_1/splashscreen.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/menu/menu_profile.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Webook",
    initialRoute: "/",
    routes: {
      "/": (context) => const SplashScreenPage(),
      LoginPage.routeName: (context) => const LoginPage(),
      HomePage.routeName: (context) => const HomePage(),
      MenuProfile.routeName: (context) => const MenuProfile()
    },
  ));
}

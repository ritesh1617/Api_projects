import 'package:flutter/material.dart';
import 'package:ritesh/Screens/Auth/Sign_up_Screen.dart/onBording/onBrdingScreens.dart';
import 'package:ritesh/Screens/Auth/Sign_up_Screen.dart/onBording/onbording.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: showHome ? HomeScreen() : Onbording(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_page/screens/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Page Demo',
        theme: ThemeData.dark().copyWith(
            textTheme: const TextTheme(),
            inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
            scaffoldBackgroundColor: const Color(0xff21254a),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xff773ccd), shadowColor: Colors.transparent),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff773ccd),
                    shadowColor: Colors.black,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))))),
        home: const WelcomePage());
  }
}

class PaddingProperties {
  final paddingTopBottom = const EdgeInsets.only(top: 20, bottom: 10);
  final paddingSymectric = const EdgeInsets.symmetric(vertical: 50);
  final paddingOnly = const EdgeInsets.only(top: 10, bottom: 20);
  final paddinOR = const EdgeInsets.symmetric(vertical: 10);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
  final paddingtext = const EdgeInsets.only(top: 10);
}

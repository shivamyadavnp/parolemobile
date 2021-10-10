import 'package:flutter/material.dart';
import 'package:parolemobile/mobileuserinterface/passwordgeneratorscreen/passwordgeneratorscreen.dart';
import 'package:parolemobile/mobileuserinterface/unexpectederrorscreen.dart';
import 'package:parolemobile/variablesandconstants/servicethemingstyle.dart';
import 'package:parolemobile/variablesandconstants/usedcolorconstants.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return const UnexpectedErrorScreen();
  };
  runApp(const ParoleMobileApp());
}

class ParoleMobileApp extends StatelessWidget {
  const ParoleMobileApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parole Mobile",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      color: kPrimaryColor,
      home: const PasswordGeneratorScreen(),
    );
  }
}

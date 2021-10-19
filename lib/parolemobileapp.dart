import 'package:parolemobile/softwarepackages.dart';

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

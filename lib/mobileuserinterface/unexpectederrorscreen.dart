import 'package:flutter/material.dart';
import 'package:parolemobile/servicesandmanagers/launchweblinkfunction.dart';
import 'package:parolemobile/variablesandconstants/configurationvalues.dart';
import 'package:parolemobile/variablesandconstants/usedcolorconstants.dart';

class UnexpectedErrorScreen extends StatefulWidget {
  const UnexpectedErrorScreen({Key key}) : super(key: key);

  @override
  _UnexpectedErrorScreenState createState() => _UnexpectedErrorScreenState();
}

class _UnexpectedErrorScreenState extends State<UnexpectedErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/unexpectederror.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.3,
            right: MediaQuery.of(context).size.width * 0.3,
            child: TextButton(
              onPressed: () {
                LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.contactUsLink);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                )),
              ),
              child: Text("Contact us".toUpperCase(), style: const TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}

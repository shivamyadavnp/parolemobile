import 'package:flutter/material.dart';
import 'package:parolemobile/mobileuserinterface/globalerrordialogwidget/globalerroralertwidget.dart';
import 'package:secure_random/secure_random.dart';

class PasswordGenerator {
  static SecureRandom secureRandom = SecureRandom();

  static Future<String> generateNewPassword(BuildContext context, String length, String generatedValue) async {
    try {
      String generated = secureRandom.nextString(
        length: int.parse(length),
        charset: "${generatedValue.characters}",
      );
      return generated.replaceAll(" ", "").toString();
    } catch (error) {
      await showDialog(context: context, builder: (context) {
        return AlertDialogWidget(
          errormessagetitle: "Something error!!",
          errormessagecontent: error.toString(),
        );
      });
      return "errorstring";
    }
  }
}

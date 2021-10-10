import 'package:flutter/material.dart';
import 'package:parolemobile/mobileuserinterface/globalerrordialogwidget/globalerroralertwidget.dart';
import 'package:share_plus/share_plus.dart';

class ShareTheApp {
  static String messageTitle = "Secure yourself today. Parole is here!!";
  static String messageContent = "Get yourself secured on your online platforms with Parole. Download now and secure all your accounts from hackers and password attacks";

  static perforrmFunction(BuildContext context) async {
    await Share.share(messageContent, subject: messageTitle).onError((error, stackTrace) async {
      await showDialog(context: context, builder: (context) {
        return AlertDialogWidget(
          errormessagetitle: "Something error!!",
          errormessagecontent: error.toString(),
        );
      });
    });
  }
}

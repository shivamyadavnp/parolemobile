import 'package:flutter/material.dart';
import 'package:parolemobile/mobileuserinterface/globalerrordialogwidget/globalerroralertwidget.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchWebLinksService {
  static launchUrl({BuildContext context, String webLink}) async {
    await launch(webLink).onError((error, stackTrace) async {
      await showDialog(context: context, builder: (context) {
        return AlertDialogWidget(
          errormessagetitle: "Something error!!",
          errormessagecontent: error.toString(),
        );
      });
      return null;
    });
  }
}

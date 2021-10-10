import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parolemobile/variablesandconstants/usedcolorconstants.dart';

class AlertDialogWidget extends StatefulWidget {
  final String errormessagetitle;
  final String errormessagecontent;

  const AlertDialogWidget({Key key, this.errormessagetitle, this.errormessagecontent}) : super(key: key);

  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Center(
        child: Text(
          widget.errormessagetitle.toString(),
          style: GoogleFonts.poppins(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      content: Center(
        child: Text(
          widget.errormessagecontent.toString(),
          style: GoogleFonts.poppins(
            color: Theme.of(context).iconTheme.color.withOpacity(0.75),
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {Navigator.pop(context);},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0.0),
            overlayColor: MaterialStateProperty.all(kPrimaryColor.withOpacity(0.10)),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15.0)),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                side: BorderSide(color: kPrimaryColor, width: 0.60),
              ),
            ),
          ),
          child: Center(
            child: Text(
              "OK",
              style: GoogleFonts.poppins(
                color: kPrimaryColor,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

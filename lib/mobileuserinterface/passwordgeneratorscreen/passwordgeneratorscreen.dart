import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parolemobile/mobileuserinterface/globalerrordialogwidget/globalerroralertwidget.dart';
import 'package:parolemobile/mobileuserinterface/servicepreferencesscreen/servicepreferencesscreen.dart';
import 'package:parolemobile/servicesandmanagers/passwordgeneratorfn.dart';
import 'package:parolemobile/variablesandconstants/configurationvalues.dart';
import 'package:parolemobile/variablesandconstants/localsessionvariables.dart';
import 'package:parolemobile/variablesandconstants/usedcolorconstants.dart';

class PasswordGeneratorScreen extends StatefulWidget {
  const PasswordGeneratorScreen({Key key}) : super(key: key);

  @override
  _PasswordGeneratorScreenState createState() => _PasswordGeneratorScreenState();
}

class _PasswordGeneratorScreenState extends State<PasswordGeneratorScreen> {
  TextEditingController passwordLengthController = TextEditingController(text: "16");
  TextEditingController generatedPasswordField = TextEditingController();
  bool isPasswordGenerated = false;
  String generatedValue = "";

  Future makeNewPasswordPattern() async {
    if (includeLowerCase) {
      setState(() {
        generatedValue = generatedValue + ConfigurationValues.lowerCaseLetters;
      });
    } else {}
    if (includeUpperCase) {
      setState(() {
        generatedValue = generatedValue + ConfigurationValues.upperCaseLetters;
      });
    } else {}
    if (includeSymbols) {
      setState(() {
        generatedValue = generatedValue + ConfigurationValues.symbolicLetters;
      });
    } else {}
    if (includeNumbers) {
      setState(() {
        generatedValue = generatedValue + ConfigurationValues.numericValues;
      });
    } else {}
    if (includeAmbiguousCharacters) {
      setState(() {
        generatedValue = generatedValue + ConfigurationValues.ambiguousLetters;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 40.0,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Parole Mobile", style: GoogleFonts.poppins(
              color: Theme.of(context).textTheme.bodyText1.color,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            )),
            Text("strong passwords generator", style: GoogleFonts.poppins(
              color: Theme.of(context).textTheme.bodyText2.color,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 22.50,
              backgroundColor: Colors.transparent,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ServicePreferencesScreen()));
                  },
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  icon: Icon(Feather.info, color: Theme.of(context).iconTheme.color, size: 22.50),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: passwordLengthController,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(decimal: false),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                filled: true,
                fillColor: Theme.of(context).iconTheme.color.withOpacity(0.10),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                hintText: "Password length",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              value: includeLowerCase,
              onChanged: (value) {
                setState(() {
                  includeLowerCase = value;
                });
              },
              title: Text("Include lower case", style: GoogleFonts.poppins(
                fontSize: 15.50,
                fontWeight: FontWeight.w500,
              )),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              value: includeUpperCase,
              onChanged: (value) {
                setState(() {
                  includeUpperCase = value;
                });
              },
              title: Text("Include upper case", style: GoogleFonts.poppins(
                fontSize: 15.50,
                fontWeight: FontWeight.w500,
              )),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              value: includeNumbers,
              onChanged: (value) {
                setState(() {
                  includeNumbers = value;
                });
              },
              title: Text("Include numbers", style: GoogleFonts.poppins(
                fontSize: 15.50,
                fontWeight: FontWeight.w500,
              )),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              value: includeSymbols,
              onChanged: (value) {
                setState(() {
                  includeSymbols = value;
                });
              },
              title: Text("Include symbols", style: GoogleFonts.poppins(
                fontSize: 15.50,
                fontWeight: FontWeight.w500,
              )),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              value: includeAmbiguousCharacters,
              onChanged: (value) {
                setState(() {
                  includeAmbiguousCharacters = value;
                });
              },
              title: Text("Include ambiguous", style: GoogleFonts.poppins(
                fontSize: 15.50,
                fontWeight: FontWeight.w500,
              )),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text("(eg. { } [ ] ( ) / ' ` ~  ; :  < > )", style: GoogleFonts.poppins(
                  color: Theme.of(context).textTheme.bodyText2.color,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                )),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.050),
            isPasswordGenerated ? TextFormField(
              controller: generatedPasswordField,
              textAlign: TextAlign.center,
              readOnly: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                filled: true,
                fillColor: Theme.of(context).iconTheme.color.withOpacity(0.10),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                hintText: "Generated password",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () async {
                      try {
                        await FlutterClipboard.copy(generatedPasswordField.text.toString()).whenComplete(() {
                          Fluttertoast.showToast(msg: "Password copied to clipboard!!");
                        });
                      } catch (error) {
                        await showDialog(context: context, builder: (context) {
                          return AlertDialogWidget(
                            errormessagetitle: "Something error",
                            errormessagecontent: error.toString(),
                          );
                        });
                      }
                    },
                    icon: Icon(Feather.copy, color: Theme.of(context).iconTheme.color, size: 20.0),
                  ),
                ),
              ),
            ) : Container(),
            isPasswordGenerated ? SizedBox(height: MediaQuery.of(context).size.height * 0.050) : Container(),
            TextButton(
              onPressed: () async {
                if (int.parse(passwordLengthController.text) > 9999) {
                  setState(() {
                    passwordLengthController.text = "9999";
                  });
                }
                if (int.parse(passwordLengthController.text) == 0) {
                  setState(() {
                    passwordLengthController.text = "1";
                  });
                }
                setState(() {
                  isPasswordGenerated = true;
                });
                await makeNewPasswordPattern().then((value) async {
                  await PasswordGenerator.generateNewPassword(context, passwordLengthController.text, generatedValue).then((value) {
                    if (value != null) {
                      setState(() {
                        generatedPasswordField.text = value.toString();
                      });
                    }
                  }).then((value) {
                    generatedValue = "";
                  });
                });
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width - 30.0, 20.0)),
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                )),
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  side: BorderSide.none,
                )),
              ),
              child: Text("Generate", style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16.50,
                fontWeight: FontWeight.w500,
              )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          ],
        ),
      ),
    );
  }
}

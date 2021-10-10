import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parolemobile/servicesandmanagers/launchweblinkfunction.dart';
import 'package:parolemobile/variablesandconstants/configurationvalues.dart';
import 'package:parolemobile/variablesandconstants/usedcolorconstants.dart';

class AboutAndPoliciesScreen extends StatefulWidget {
  const AboutAndPoliciesScreen({Key key}) : super(key: key);

  @override
  _AboutAndPoliciesScreenState createState() => _AboutAndPoliciesScreenState();
}

class _AboutAndPoliciesScreenState extends State<AboutAndPoliciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarHeight + 15.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          highlightColor: kPrimaryColor.withOpacity(0.10),
          splashColor: kPrimaryColor.withOpacity(0.10),
          icon: const Icon(Icons.arrow_back_rounded, size: 25.0),
        ),
        titleSpacing: NavigationToolbar.kMiddleSpacing * 0.10,
        title: Text(
          "About and policies",
          style: GoogleFonts.poppins(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 17.50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTile(
              onTap: () async {
                await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.termsOfFairUseLink);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async {
                    await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.termsOfFairUseLink);
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.file_text, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Terms of fair use",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.privacyPolicyLink);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async {
                    await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.privacyPolicyLink);
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.lock, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Privacy policy",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.dataPolicyLink);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async {
                    await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.dataPolicyLink);
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.file_text, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Data policy",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                showLicensePage(
                  context: context,
                  applicationName: "Parole Mobile",
                );
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0,),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {
                    showLicensePage(
                      context: context,
                      applicationName: "Parole Mobile",
                    );
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.smartphone, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Software licenses",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: Icon(Feather.info, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Version 1.0.0 (arm64-v8a_release_flutter)",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          ],
        ),
      ),
    );
  }
}

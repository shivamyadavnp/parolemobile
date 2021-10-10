import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parolemobile/mobileuserinterface/servicepreferencesscreen/aboutparoleservicescreen.dart';
import 'package:parolemobile/servicesandmanagers/launchweblinkfunction.dart';
import 'package:parolemobile/servicesandmanagers/sharetheappfunction.dart';
import 'package:parolemobile/variablesandconstants/configurationvalues.dart';
import 'package:parolemobile/variablesandconstants/usedcolorconstants.dart';

class ServicePreferencesScreen extends StatefulWidget {
  const ServicePreferencesScreen({Key key}) : super(key: key);

  @override
  _ServicePreferencesScreenState createState() => _ServicePreferencesScreenState();
}

class _ServicePreferencesScreenState extends State<ServicePreferencesScreen> {
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
          icon: const Icon(Icons.arrow_back_rounded, size: 25.0),
        ),
        titleSpacing: NavigationToolbar.kMiddleSpacing * 0.10,
        title: Text(
          "Settings and preferences",
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.075),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Parole Mobile", style: GoogleFonts.poppins(
                  fontSize: 20.50,
                  fontWeight: FontWeight.w500,
                )),
                Text("strong passwords generator", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color.withOpacity(0.75),
                  fontSize: 16.50,
                  fontWeight: FontWeight.w500,
                )),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.075),
            ListTile(
              onTap: () async {
                await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.securityGuideLink);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async {
                    await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.securityGuideLink);
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.lock, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Security guidelines",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.paroleWebLink);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async {
                    await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.paroleWebLink);
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.external_link, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Parole for web",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutAndPoliciesScreen()));
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutAndPoliciesScreen()));
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.info, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "About and policies",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.sendFeedbackLink);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async {
                    await LaunchWebLinksService.launchUrl(context: context, webLink: ConfigurationValues.sendFeedbackLink);
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.send, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Send feedback",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                await ShareTheApp.perforrmFunction(context);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0,),
              focusColor: kPrimaryColor.withOpacity(0.10),
              selectedTileColor: kPrimaryColor.withOpacity(0.10),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async {
                    await ShareTheApp.perforrmFunction(context);
                  },
                  highlightColor: kPrimaryColor.withOpacity(0.10),
                  focusColor: kPrimaryColor.withOpacity(0.10),
                  icon: const Icon(Feather.share, color: kPrimaryColor, size: 20.0),
                ),
              ),
              title: Text(
                "Share Parole with others",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.10),
          ],
        ),
      ),
    );
  }
}

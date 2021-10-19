import 'package:parolemobile/softwarepackages.dart';

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
        toolbarHeight: kToolbarHeight + 15.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_rounded, color: Theme.of(context).iconTheme.color, size: 25.0),
        ),
        titleSpacing: NavigationToolbar.kMiddleSpacing * 0.10,
        title: Text(
          "About and policies", style: GoogleFonts.poppins(
            color: Theme.of(context).iconTheme.color,
            fontSize: 17.50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            ListTile(
              onTap: () async => await launch(ConfigurationValues.termsOfFairUseLink),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async => await launch(ConfigurationValues.termsOfFairUseLink),
                  icon: Icon(Feather.file_text, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Terms of fair use", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async => await launch(ConfigurationValues.privacyPolicyLink),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async => await launch(ConfigurationValues.privacyPolicyLink),
                  icon: Icon(Feather.lock, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Privacy policy", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async => await launch(ConfigurationValues.openSourceCodeLink),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async => await launch(ConfigurationValues.openSourceCodeLink),
                  icon: Icon(Feather.github, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Open source code", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
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
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {
                    showLicensePage(
                      context: context,
                      applicationName: "Parole Mobile",
                    );
                  },
                  icon: Icon(Feather.smartphone, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Software licenses", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Feather.info, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Version 0.1.0 (mobile_test_release)",
                style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.075),
          ],
        ),
      ),
    );
  }
}

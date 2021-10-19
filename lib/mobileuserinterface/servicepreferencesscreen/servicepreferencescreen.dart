import 'package:parolemobile/softwarepackages.dart';

class ServicePreferencesScreen extends StatefulWidget {
  const ServicePreferencesScreen({Key key}) : super(key: key);

  @override
  _ServicePreferencesScreenState createState() => _ServicePreferencesScreenState();
}

class _ServicePreferencesScreenState extends State<ServicePreferencesScreen> {
  String messageTitle = "Secure yourself today. Parole is here!!";
  String messageContent = "Get yourself secured on your online platforms with Parole. Download now and secure all your accounts from hackers and password attacks. Get with this link ${ConfigurationValues.getParoleServiceLink}";

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
          "Settings and preferences", style: GoogleFonts.poppins(
            color: Theme.of(context).iconTheme.color,
            fontSize: 17.50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 20.50,
                  fontWeight: FontWeight.w500,
                )),
                Text("strong passwords generator", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color.withOpacity(0.85),
                  fontSize: 16.50,
                  fontWeight: FontWeight.w500,
                )),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.075),
            ListTile(
              onTap: () async => await launch(ConfigurationValues.securityGuideLink),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async => await launch(ConfigurationValues.securityGuideLink),
                  icon: Icon(Feather.lock, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Security guidelines", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async => await launch(ConfigurationValues.paroleWebLink),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async => await launch(ConfigurationValues.paroleWebLink),
                  icon: Icon(Feather.external_link, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Parole for web",
                style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
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
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutAndPoliciesScreen()));
                  },
                  icon: Icon(Feather.info, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "About and policies", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async => await launch(ConfigurationValues.sendFeedbackLink),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async => await launch(ConfigurationValues.sendFeedbackLink),
                  icon: Icon(Feather.send, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Send feedback",
                style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () async => await Share.share(messageContent, subject: messageTitle),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0,),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () async => await Share.share(messageContent, subject: messageTitle),
                  icon: Icon(Feather.share, color: Theme.of(context).iconTheme.color, size: 20.0),
                ),
              ),
              title: Text(
                "Share Parole with others", style: GoogleFonts.poppins(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.050),
          ],
        ),
      ),
    );
  }
}

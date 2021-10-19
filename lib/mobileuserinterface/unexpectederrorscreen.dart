import 'package:parolemobile/softwarepackages.dart';

class UnexpectedErrorScreen extends StatefulWidget {
  final String errorMessage;

  const UnexpectedErrorScreen({Key key, this.errorMessage}) : super(key: key);

  @override
  _UnexpectedErrorScreenState createState() => _UnexpectedErrorScreenState();
}

class _UnexpectedErrorScreenState extends State<UnexpectedErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              Text("Something error!!", textAlign: TextAlign.center, style: GoogleFonts.poppins(
                color: Theme.of(context).iconTheme.color,
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Text(widget.errorMessage.toString(), textAlign: TextAlign.center, style: GoogleFonts.poppins(
                color: Theme.of(context).iconTheme.color,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:parolemobile/softwarepackages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  ErrorWidget.builder = (errorDetails) {
    return UnexpectedErrorScreen(
      errorMessage: errorDetails.library.toString(),
    );
  };
  runApp(const ParoleMobileApp());
}

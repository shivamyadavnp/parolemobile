import 'package:parolemobile/softwarepackages.dart';

class PasswordGenerator {
  static SecureRandom secureRandom = SecureRandom();

  static Future<String> generateNewPassword(BuildContext context, {String length, String generatedValue}) async {
    try {
      String generated = secureRandom.nextString(
        length: int.parse(length),
        charset: "${generatedValue.characters}",
      );

      return generated.replaceAll(" ", "").toString();

    } catch (error) {
      await showDialog(context: context, builder: (context) {
        return ErrorDialogWidget(
          errorMessageTitle: "Something error!!",
          errorMessageContent: error.toString(),
        );
      });

      return "somethingerror";
    }
  }
}

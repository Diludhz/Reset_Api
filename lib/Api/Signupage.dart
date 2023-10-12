import 'dart:convert';

import 'package:flutter_app/utils/exports.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;

class SignUpController with ChangeNotifier {
  TextEditingController username = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  bool _showpassword = true;
  bool _showcnfrmpassword = true;

  bool get showpassword => _showpassword;
  bool get showcnfrmpassword => _showcnfrmpassword;

  Future<void> registerWithEmail() async {
    final response = await http.post(
      Uri.parse(
          'http://trial.weberfox.in/task/api/user-signup'), //api integrated uisng http.post
      //Values from the screens are passed in this body in Map format
      body: {
        "name": name.text,
        "username": username.text,
        "email": email.text,
        "phone_number": phone.text,
        "password": password.text,
        "ConfirmPassword": confirmpassword.text,
      },
    );
    try {
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("Success");
        Get.to(
            LoginScreen()); // if connected successfull it will go to loginScreen
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e);
    }
  }

  void changeShowPassword() {
    _showpassword = !showpassword;
    notifyListeners();
  }

  void changeShowCnfrmPassword() {
    _showcnfrmpassword = !_showcnfrmpassword;
    notifyListeners();
  }
}

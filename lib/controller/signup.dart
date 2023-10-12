import 'package:flutter_app/utils/exports.dart';

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

  void changeShowPassword() {
    _showpassword = !showpassword;
    notifyListeners();
  }

  void changeShowCnfrmPassword() {
    _showcnfrmpassword = !_showcnfrmpassword;
    notifyListeners();
  }
}

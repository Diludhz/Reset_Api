import 'package:flutter_app/utils/exports.dart';

class LoginController with ChangeNotifier {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _showpassword = true;
  bool get showpassword => _showpassword;

  changeShowPassword() {
    _showpassword = !showpassword;
    notifyListeners();
  }
}

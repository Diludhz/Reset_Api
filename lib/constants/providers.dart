import 'package:flutter_app/utils/exports.dart';

List<SingleChildWidget> providerDeclaration = [
  ChangeNotifierProvider(create: (_) => LoginController()),
  ChangeNotifierProvider(create: (_) => SignUpController()),
];

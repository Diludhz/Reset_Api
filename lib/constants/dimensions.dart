import 'package:flutter_app/utils/exports.dart';

EdgeInsetsGeometry screenpadding =
    const EdgeInsets.symmetric(horizontal: 10, vertical: 10);
EdgeInsetsGeometry screenpadding1 =
    const EdgeInsets.symmetric(horizontal: 15, vertical: 10);

double height(BuildContext context, double i) {
  double height = MediaQuery.of(context).size.height * i;
  return height;
}

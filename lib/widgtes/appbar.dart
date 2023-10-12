import 'package:flutter_app/utils/exports.dart';

PreferredSizeWidget appBars({
  required String text,
  required BuildContext context,
  required onpressed,
}) {
  return AppBar(
    leading: IconButton(
        onPressed: onpressed, icon: arrowback, color: darkpinkishRed),
    elevation: 0,
    title: Text(text, style: s3),
    backgroundColor: whiteColors,
  );
}

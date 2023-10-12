import 'package:flutter_app/utils/exports.dart';

Widget details(Icon icon, String label, String text) {
  return Padding(
    padding: screenpadding1,
    child: Row(
      children: [
        icon,
        const SizedBox(width: 10),
        SizedBox(width: 140, child: Text(label, style: s3)),
        Text(':', style: s3),
        const SizedBox(width: 10),
        Text(text, style: s7),
        const SizedBox(width: 10)
      ],
    ),
  );
}

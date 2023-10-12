import 'package:flutter_app/utils/exports.dart';

Widget customButton(
    {required String txt,
    required BuildContext context,
    required Function onpressed}) {
  return Center(
    child: Padding(
      padding: screenpadding,
      child: SizedBox(
        width: double.infinity,
        height: buttonHeight,
        child: ElevatedButton(
            onPressed: () => onpressed(),
            style: ElevatedButton.styleFrom(
                backgroundColor: darkpinkishRed, shape: r1),
            child: Text(txt, style: s2)),
      ),
    ),
  );
}

Widget buttons({
  required String txt,
  required BuildContext context,
  required Function onpressed,
}) {
  return Center(
    child: Padding(
      padding: screenpadding,
      child: SizedBox(
        width: double.infinity,
        height: buttonHeight,
        child: ElevatedButton(
            onPressed: () => onpressed(),
            style: ElevatedButton.styleFrom(
                backgroundColor: whiteColors, shape: r1),
            child: Text(txt, style: s3)),
      ),
    ),
  );
}

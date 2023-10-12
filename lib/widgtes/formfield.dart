import 'package:flutter_app/utils/exports.dart';

Widget formfield(
    {required BuildContext context,
    required String st,
    required bool obsure,
    required bool showIcon,
    required TextEditingController controller,
    Icon? icon,
    bool? showPreFixIcon,
    required bool readonly,
    required Function ontap,
    int maxline = 1}) {
  return Center(
    child: Container(
      margin: screenpadding,
      decoration: d1,
      height: textFieldHeight,
      width: double.infinity,
      child: Center(
          child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.multiline,
              obscureText: obsure,
              autofocus: true,
              cursorColor: darkpinkishRed,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () => ontap(),
                      icon: (showIcon && !obsure)
                          ? visibility
                          : (showIcon && obsure)
                              ? visibilityoff
                              : const SizedBox()),
                  hintText: st,
                  hintStyle: s4,
                  focusedBorder: b1,
                  enabledBorder: b1,
                  fillColor: whiteColors,
                  prefixIcon: icon),
              readOnly: readonly,
              onTap: () => ontap(),
              style: s3)),
    ),
  );
}

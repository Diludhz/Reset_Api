import 'package:flutter_app/utils/exports.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static Future<void> back({bool? animated}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        back();
        return false;
      },
      child: Scaffold(
          backgroundColor: darkpinkishRed,
          bottomNavigationBar: Padding(
            padding: screenpadding,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                children: [
                  Expanded(
                      child: buttons(
                          context: context,
                          txt: 'LOG IN',
                          onpressed: () => Get.to(() => const LoginScreen()))),
                  const SizedBox(width: 10),
                  Expanded(
                      child: buttons(
                          context: context,
                          txt: 'SIGN UP',
                          onpressed: () => Get.to(() => const SignUpScreen()))),
                ],
              ),
              const SizedBox(height: 10),
            ]),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: screenpadding1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height(context, 0.2)),
                    Center(
                      child: CircleAvatar(
                        backgroundColor: darkpinkishRed,
                        radius: 100,
                        child: Container(
                          margin: screenpadding,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4))
                              ]),
                          child: const CircleAvatar(
                              backgroundImage: AssetImage(onboard), radius: 70),
                        ),
                      ),
                    ),
                    SizedBox(height: height(context, 0.1)),
                    Text('Everything You Looking', style: s5),
                    Text('Lorem ipsum dolor sit amet, consedre', style: s6),
                    Text('adipiscing elit aserrre', style: s6),
                  ]),
            ),
          )),
    );
  }
}

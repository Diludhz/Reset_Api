import 'package:flutter_app/utils/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Future<void> back({bool? animated}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }

  @override
  Widget build(BuildContext context) {
    var controller = context.watch<LoginController>();
    return WillPopScope(
      onWillPop: () async {
        Get.to(() => const OnboardingScreen());
        return false;
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height(context, 0.1)),
            const SizedBox(height: 40),
            Image.asset(height: 70, width: 70, logo),
            const SizedBox(height: 20),
            Text('Sign In', style: s1),
            const SizedBox(height: 40),
            formfield(
                icon: person,
                st: 'Username',
                context: context,
                readonly: false,
                obsure: false,
                showIcon: false,
                controller: controller.username,
                ontap: () {}),
            formfield(
                icon: key,
                st: 'Password',
                context: context,
                readonly: false,
                obsure: controller.showpassword,
                showIcon: true,
                controller: controller.password,
                ontap: () => controller.changeShowPassword()),
            SizedBox(height: height(context, 0.03)),
            customButton(
                context: context,
                txt: 'Log In',
                onpressed: () => Get.to(() => const ProfileDetailScreen())),
            SizedBox(height: height(context, 0.03)),
          ],
        ),
      )),
    );
  }
}

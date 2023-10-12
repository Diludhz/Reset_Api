import 'package:flutter_app/utils/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = context.watch<SignUpController>();
    return WillPopScope(
      onWillPop: () async {
        Get.to(() => const OnboardingScreen());
        return false;
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: screenpadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height(context, 0.1)),
              const SizedBox(height: 20),
              Image.asset(height: 70, width: 70, logo),
              const SizedBox(height: 20),
              Text('Sign Up', style: s1),
              const SizedBox(height: 30),
              formfield(
                  icon: person,
                  st: 'Name',
                  context: context,
                  readonly: false,
                  obsure: false,
                  showIcon: false,
                  controller: controller.name,
                  ontap: () {}),
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
                  icon: email,
                  st: 'Email Address',
                  context: context,
                  readonly: false,
                  obsure: false,
                  showIcon: false,
                  controller: controller.email,
                  ontap: () {}),
              formfield(
                  icon: phone,
                  st: 'Phone Number',
                  context: context,
                  readonly: false,
                  obsure: false,
                  showIcon: false,
                  controller: controller.phone,
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
              formfield(
                  icon: key,
                  st: 'Confirm Password',
                  context: context,
                  readonly: false,
                  obsure: controller.showcnfrmpassword,
                  showIcon: true,
                  controller: controller.confirmpassword,
                  ontap: () => controller.changeShowCnfrmPassword()),
              SizedBox(height: height(context, 0.04)),
              customButton(
                  txt: 'Sign Up',
                  context: context,
                  onpressed: () => controller.registerWithEmail()),
              SizedBox(height: height(context, 0.04)),
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter_app/utils/exports.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.to(() => const LoginScreen());
          return false;
        },
        child: Scaffold(
          appBar: appBars(
              context: context,
              text: 'Personal Details',
              onpressed: () => Get.to(() => const LoginScreen())),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height(context, 0.08)),
                const CircleAvatar(
                    radius: 50, backgroundImage: AssetImage(user)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Alex George', style: s8),
                          Text('alex@gmail.com', style: s7)
                        ])
                  ],
                ),
                const SizedBox(height: 30),
                details(person, 'Name', 'Alex George'),
                details(person, 'Username', 'alex02'),
                details(email, 'Email', 'alex@gmail.com'),
                details(phone, 'Phone Number', '+91 7654356743'),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter_app/utils/exports.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MultiProvider(
      providers: providerDeclaration,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink, fontFamily: 'Montserrat'),
        home: const OnboardingScreen(),
      )));
}

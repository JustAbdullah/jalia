import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jalia/views/CommuncationScreen/communication_screen.dart';
import 'package:jalia/views/auth/sign_up_screen.dart';

import 'core/constant/color_primary.dart';
import 'core/localization/changelanguage.dart';
import 'core/localization/translation.dart';
import 'core/services/appservices.dart';
import 'views/AddBusiness/add_business.dart';
import 'views/AddCv/add_cv.dart';
import 'views/AddWorks/add_works.dart';
import 'views/BusinessScreen/business_screen.dart';
import 'views/HomeScreen/home_screen.dart';
import 'views/WorksScreen/works_screen.dart';
import 'views/auth/login_screen.dart';
import 'views/loadingScreen/loading_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Stripe.publishableKey = ApiKeysStripe.Publishablekey;

  await initialServices();
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

ChangeLanguageToLocale chagnelangcontroller = Get.put(ChangeLanguageToLocale());

class MyApp extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final width;
  const MyApp({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //  initialBinding: initBindings(),
      debugShowCheckedModeBanner: false,
      locale: chagnelangcontroller.language,
      translations: AppTranslation(),
      title: "Jalia",
      home: const Scaffold(
          body: SafeArea(
              child: ScreenUtilInit(
                  designSize: Size(360, 690), child: LoadingScreen()))),
      theme: ThemeData(primarySwatch: ModeColor.mode),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaleFactor.clamp(0.9, 0.9);
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
            child: child!);
      },
    );
  }
}

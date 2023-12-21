import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jalia/customWidgets/custom_padding.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/appcolors.dart';
import 'QuestionsWidgets/list_of_qoestions.dart';
import 'QuestionsWidgets/top_header_qoestions_screen.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColors.whiteColorTypeTwo,
      body: SafeArea(
          child: SingleChildScrollView(
        child: PaddingCustom(
          theTop: 30,
          child: Column(children: [
            TopHeaderQoestionsScreen(),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(height: 500.h, child: ListOfQoestions())
          ]),
        ),
      )),
    );
  }
}

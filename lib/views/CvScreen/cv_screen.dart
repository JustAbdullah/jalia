import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jalia/controllers/home_controller.dart';
import 'package:jalia/core/constant/app_text_styles.dart';
import 'package:jalia/customWidgets/custom_padding.dart';
import 'package:jalia/customWidgets/custom_text.dart';
import 'package:jalia/views/WorksScreen/WorksWidgets/list_of_places.dart';
import 'package:jalia/views/WorksScreen/WorksWidgets/list_of_works.dart';
import 'package:jalia/views/WorksScreen/WorksWidgets/top_header_works_screen.dart';

import '../../core/constant/appcolors.dart';
import '../../customWidgets/custom_container_api.dart';
import '../../customWidgets/custome_textfiled.dart';
import 'CvWidget/list_of_business.dart';
import 'CvWidget/top_header_business_screen.dart';

class CvScreen extends StatelessWidget {
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColors.whiteColorTypeTwo,
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: PaddingCustom(
                  theTop: 36,
                  theBottom: 10,
                  child: Column(children: [
                    TopHeaderCVScreen(),
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: TextFormFiledCustom(
                        labelData: "ابحث عن  سيرة ذاتية",
                        hintData: "قم رجاءًا بإدخال الاسم",
                        iconData: Icons.search,
                        controllerData: homeController.nameSearchController,
                        value: (p0) {},
                        fillColor: AppColors.whiteColor,
                        hintColor: AppColors.theAppColorBlue,
                        iconColor: AppColors.balckColorTypeThree,
                        borderSideColor: AppColors.whiteColor,
                        fontColor: AppColors.balckColorTypeThree,
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        autofillHints: [AutofillHints.name],
                        onChanged: (p0) {},
                        validator: (p0) {},
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SingleChildScrollView(
                        child: SizedBox(height: 470.h, child: ListOfCv()))
                  ]),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

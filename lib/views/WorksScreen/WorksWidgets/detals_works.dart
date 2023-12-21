import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jalia/core/constant/app_text_styles.dart';
import 'package:jalia/customWidgets/custom_cachednetworkimage.dart';
import 'package:jalia/customWidgets/custom_padding.dart';
import 'package:jalia/customWidgets/custom_text.dart';

import '../../../controllers/home_controller.dart';
import '../../../core/constant/appcolors.dart';

class DetalesWorks extends StatelessWidget {
  const DetalesWorks({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.w),
        child: PaddingCustom(
          theTop: 40,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            TextCustom(
                theText: "تفاصيل عرض العمل",
                fontSizeWidth: 23,
                fontFamily: AppTextStyles.Almarai,
                fontColor: AppColors.blackColor),
            SizedBox(
              height: 40.h,
            ),
            Container(
                alignment: Alignment.topRight,
                height: 100.h,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomCachedNetworkImage(
                          urlTheImage:
                              homeController.works.work_image.toString(),
                          width: 100,
                          height: 100,
                          boxFit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        PaddingCustom(
                            theTop: 40,
                            child: Container(
                              alignment: Alignment.topRight,
                              width: 190.w,
                              height: 50.h,
                              child: Text(
                                homeController.works.work_name.toString(),
                                style: TextStyle(
                                  height: 1.3.h,
                                  fontSize: 19,
                                  fontFamily: AppTextStyles.Almarai,
                                  color: AppColors.balckColorTypeThree,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ],
                    ))),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "وصف متطلبات العمل",
                style: TextStyle(
                  height: 1.5.h,
                  fontSize: 20.sp,
                  color: AppColors.balckColorTypeThree,
                  fontFamily: AppTextStyles.Almarai,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              homeController.works.work_description.toString(),
              style: TextStyle(
                height: 1.3.h,
                fontSize: 15.sp,
                color: AppColors.balckColorTypeThree,
                fontFamily: AppTextStyles.Almarai,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Container(
                alignment: Alignment.center,
                height: 25.h,
                color: const Color.fromARGB(255, 176, 171, 171),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 17.h),
                    child: Row(
                      children: [
                        TextCustom(
                            Theheight: 0.02.h,
                            theText: "الشركة المقدمة للعمل:",
                            fontSizeWidth: 15,
                            fontFamily: AppTextStyles.Almarai,
                            fontColor: AppColors.balckColorTypeThree),
                        SizedBox(
                          width: 10.w,
                        ),
                        TextCustom(
                            Theheight: 0.02.h,
                            theText:
                                homeController.works.work_copmany.toString(),
                            fontSizeWidth: 15,
                            fontFamily: AppTextStyles.Almarai,
                            fontWeight: FontWeight.bold,
                            fontColor: AppColors.whiteColor),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                alignment: Alignment.center,
                height: 35.h,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 25.h,
                          color: const Color.fromARGB(255, 176, 171, 171),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Center(
                              child: Text(
                                "مكان العمل:",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppColors.balckColorTypeThree,
                                  fontFamily: AppTextStyles.Almarai,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 25.h,
                          color: AppColors.yellowColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Center(
                              child: Text(
                                homeController.works.name_id_place.toString(),
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppColors.whiteColor,
                                  fontFamily: AppTextStyles.Almarai,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 25.h,
                          color: AppColors.theAppColorBlue,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Center(
                              child: Text(
                                "Istanbul",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppColors.whiteColor,
                                  fontFamily: AppTextStyles.Almarai,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                alignment: Alignment.center,
                height: 35.h,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 25.h,
                          color: const Color.fromARGB(255, 176, 171, 171),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Center(
                              child: Text(
                                "تصنيف الوظيفة:",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppColors.balckColorTypeThree,
                                  fontFamily: AppTextStyles.Almarai,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 25.h,
                          color: AppColors.redColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Center(
                              child: Text(
                                homeController.works.name_type_work.toString(),
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppColors.whiteColor,
                                  fontFamily: AppTextStyles.Almarai,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 25.h,
                color: const Color.fromARGB(255, 176, 171, 171),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 17.h),
                    child: Row(
                      children: [
                        TextCustom(
                            Theheight: 0.02.h,
                            theText: "تاريخ إضافة فرصة العمل:",
                            fontSizeWidth: 15,
                            fontFamily: AppTextStyles.Almarai,
                            fontColor: AppColors.balckColorTypeThree),
                        SizedBox(
                          width: 10.w,
                        ),
                        TextCustom(
                            Theheight: 0.02.h,
                            theText: homeController.works.work_date.toString(),
                            fontSizeWidth: 15,
                            fontFamily: AppTextStyles.Almarai,
                            fontWeight: FontWeight.bold,
                            fontColor: AppColors.whiteColor),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Container(
                alignment: Alignment.center,
                height: 25.h,
                color: const Color.fromARGB(255, 176, 171, 171),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 18.h),
                    child: Row(
                      children: [
                        TextCustom(
                            Theheight: 0.02.h,
                            theText: "رقم التواصل مع الشركة:",
                            fontSizeWidth: 15,
                            fontFamily: AppTextStyles.Almarai,
                            fontColor: AppColors.balckColorTypeThree),
                        SizedBox(
                          width: 10.w,
                        ),
                        TextCustom(
                            Theheight: 0.02.h,
                            theText: homeController.works.work_number_phone
                                .toString(),
                            fontSizeWidth: 15,
                            fontFamily: AppTextStyles.Cairo,
                            fontWeight: FontWeight.bold,
                            fontColor: AppColors.yellowColor),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ))),
    );
  }
}

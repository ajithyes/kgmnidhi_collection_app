import 'package:flutter/material.dart';
import 'package:kgm_nidhi/constants/size_const.dart';
import 'package:kgm_nidhi/constants/styles.dart';
import 'package:sizer/sizer.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeConst.screenPadding),
        child: Stack(alignment: Alignment.topCenter, children: [
          Column(
            children: [
              Container(
                color: Styles.secondoryColor,
                width: double.infinity,
                height: 27.h,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.sp),
                    color: Styles.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 15.h,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.sp),
                gradient: const LinearGradient(
                  colors: [
                    Styles.alphaColor,
                    Styles.betaColor,
                    Styles.betaColor,
                    Styles.baseColor
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              width: 75.w,
              height: 23.h,
            ),
          ),
        ]),
      ),
    );
  }
}

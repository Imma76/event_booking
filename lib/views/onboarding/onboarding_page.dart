import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../themes/app_theme.dart';


class OnboardingPage extends StatefulWidget {
  static const route = 'onboarding_page';
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children:[

          //SizedBox(height:100),
          Positioned(

              bottom: 250,
              child: Center(child: Image.asset('assets/onboarding1.png',width: 270.w,height: 538.h,))),
          Positioned(
            top: MediaQuery.of(context).size.height - 300,
            child: Container(
              height: 288.h,
              width: 375.w,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,

               children: [
                 Gap(26.h),
                 Text('Explore Upcoming and Nearby Events',),
               ],
             ),
             decoration: BoxDecoration(
               color:AppTheme.primaryColor,

               borderRadius:
                 BorderRadius.only(topLeft:
                 Radius.circular(48),topRight:  Radius.circular(48))
             ),
            ),
          ),
        ]

      ),
    );
  }
}

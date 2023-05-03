import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../themes/app_theme.dart';


class OnboardingPage extends StatefulWidget {
  static const route = 'onboarding_page';
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children:[


          Positioned(

              bottom: 250,
              child: Center(child: Image.asset( index == 0?'assets/onboarding1.png':index == 2?'assets/onboarding2.png':'assets/onboarding3.png',width: 270.w,height: 538.h,))),
          Positioned(
            top: MediaQuery.of(context).size.height - 300,
            child: Container(
              height: 288.h,
              width: 375.w,
             decoration: const BoxDecoration(
               color:AppTheme.primaryColor,

               borderRadius:
                 BorderRadius.only(topLeft:
                 Radius.circular(48),topRight:  Radius.circular(48))
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,

               children: [
                 Gap(26.h),
                 SizedBox(
                   width: 295.w,
                   child: Text(index == 0?'Explore Upcoming and \n Nearby Events':index == 2?' Web Have Modern Events Calendar Feature':'To Look Up More Events or Activities Nearby By Map',textAlign: TextAlign.center,style: GoogleFonts.roboto(
                     fontWeight: FontWeight.w500, fontSize: 22.sp, color: AppTheme.white
                   ),),
                 ),
                 Gap(16.h),
                 SizedBox(
                   width: 295.w,
                   child: Text(index == 0?'In publishing and graphic design, Lorem is a placeholder text commonly':index == 2?'  To Look Up More Events or Activities Nearby By Map':' In publishing and graphic design, Lorem is a placeholder text commonly',textAlign: TextAlign.center,style: GoogleFonts.roboto(
                       fontWeight: FontWeight.w400, fontSize: 15.sp, color: AppTheme.white.withOpacity(0.8)
                   ),),
                 ),
                 Gap(43.h),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text('Skip',style :GoogleFonts.roboto(
                 fontWeight: FontWeight.w500, fontSize: 18.sp, color: AppTheme.white.withOpacity(0.8))),
                     AnimatedSmoothIndicator(
                       activeIndex:  index,
                       count: 3,
                       effect:  ExpandingDotsEffect(
                           dotHeight: 8.h,
                           dotWidth: 8.w,
                           activeDotColor: AppTheme.white,
                           dotColor: AppTheme.white.withOpacity(0.8),
                       ),
                     ),
                     GestureDetector(
                       onTap:(){
                         setState(() {
                           index++;

                         });
                       },
                       child: Text('Next',style :GoogleFonts.roboto(
                           fontWeight: FontWeight.w500, fontSize: 18.sp, color: AppTheme.white.withOpacity(0.8))),
                     ),
                   ],
                 )

               ],
             ),
            ),
          ),
        ]

      ),
    );
  }
}

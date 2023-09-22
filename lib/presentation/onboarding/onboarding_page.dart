import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padilni/presentation/onboarding/widget/contine_button.dart';
import 'package:padilni/presentation/onboarding/widget/page_view_widget.dart';
import 'package:padilni/presentation/onboarding/widget/skip_button.dart';
import 'package:padilni/utils/colors.dart';
import 'package:padilni/utils/widgets/get_height.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBoardingPage extends StatelessWidget {
   OnBoardingPage({super.key});
var controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: Column(
          children: [
      Stack( 
        alignment: Alignment.bottomCenter,
       children: [
           SizedBox(
            height: Get.height*0.61,
            child:
            PageView(
             controller: controller,
             children:const [ 
                  CustomPageWidget(imagePath: "assets/images/onboarding1.png",),
                  CustomPageWidget(imagePath: "assets/images/onboarding2.png",),
                  CustomPageWidget(imagePath: "assets/images/onboarding3.jpg",) 
             ],
         ),) , 
         Padding(
         padding:  EdgeInsets.all(Get.width*0.04),
         child: SmoothPageIndicator(
         controller:controller,
         count:3,
         effect: const WormEffect(
         activeDotColor: AppColors.thirdColor ,
         dotColor: AppColors.primaryColor
        ),),)
        ],
      ) , 
      GetHeight(height: Get.height*0.06), 
      Text("Splash Screen Image Preview",style: Theme.of(context).textTheme.bodyMedium,) ,
      GetHeight(height: Get.height*0.13),  
       
      Row(
        children: [
          SkipButton(image: "assets/images/skip_icon.png", text: "Skip", 
          onTap: (){}, padding: EdgeInsets.fromLTRB(Get.width*0.13 , 0 , 0 , 0),),

          const Spacer(),

           Continuebutton(image: "assets/images/skip_icon.png", text: "Continue", 
          onTap: (){}, padding: EdgeInsets.fromLTRB(0 , 0 , Get.width*0.13 , 0),),
        ],
      )
      
 ],)),
 ); 

  }
}
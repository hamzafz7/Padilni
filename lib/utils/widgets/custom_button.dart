import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padilni/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
  required this.onpressed,required this.child});
final Function()? onpressed ;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Get.width*0.07),
      child: MaterialButton( 
        color: AppColors.fifthcolor,
        minWidth: Get.width*0.75,
        height: Get.height*0.07,
        onPressed:onpressed ,
      child: child,
    ));
  }
}
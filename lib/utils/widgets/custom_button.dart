import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padilni/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
  required this.onpressed,required this.text});
final Function()? onpressed ;
final String text;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Get.width*0.07),
      child: MaterialButton( 
        color: AppColors.fifthcolor,
        minWidth: Get.width*0.75,
        height: Get.height*0.07,
        onPressed:onpressed ,
      child: Text(text , style: Theme.of(context).textTheme.bodyMedium!
      .copyWith(color: AppColors.primaryColor),),),
    );
  }
}
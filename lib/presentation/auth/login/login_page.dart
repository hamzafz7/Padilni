import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padilni/utils/widgets/auth_appbar.dart';
import 'package:padilni/utils/widgets/custom_button.dart';
import 'package:padilni/utils/widgets/custom_text_form.dart';
import 'package:padilni/utils/widgets/get_height.dart';
import 'package:padilni/utils/widgets/get_width.dart';

import '../../../utils/colors.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
   LoginPage({super.key});
 var emailController = TextEditingController();
 var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
    appBar: const CustomAppBar(text: "Login") ,
    body: Column( 
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ 
    
        GetHeight(height:Get.height*0.07 ) ,

        Center(
          child: Text("Log in with your email and password", 
          style: Theme.of(context).textTheme.bodySmall,),
        ) , 

        GetHeight(height: Get.height*0.03), 

        CustomFormField(hinttext: "Your Email",
        validator: (){ },
        controller:emailController ,
        suffix: Icons.email,
        ),  
        GetHeight(height: Get.height*0.01),
        CustomFormField(hinttext: "Password",
        validator: (){ },
        controller:emailController ,
        suffix: Icons.lock,
        ),  
         
         GetHeight(height: Get.height*0.05),
        SizedBox( 
          width: Get.width*0.87,
          child: CustomButton(onpressed: (){}, child: Row(
            children:[ 
              GetWidth(width: Get.width*0.34),
            Text("Login" , style: Theme.of(context).textTheme.bodyMedium!
      .copyWith(color: AppColors.primaryColor),),
              const  Spacer(), 
             SizedBox( 
                      height: Get.height*0.03,
                      child:const  VerticalDivider(
                        color: AppColors.seventhColor,
                      )),
           const Icon(Icons.send)
               ] )),
        )
      ],
    )
    );
  }
}
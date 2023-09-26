import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padilni/presentation/auth/resetpassword/reset_password_page.dart';
import 'package:padilni/utils/routes/app_routes.dart';
import 'package:padilni/utils/themes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  
const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      getPages: AppRoutes.appRoutes,
      debugShowCheckedModeBanner: false,
      home: ResetPasswordPage()
    );
  }
}

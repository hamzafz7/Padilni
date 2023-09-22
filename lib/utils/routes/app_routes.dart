import 'package:get/get.dart';
import 'package:padilni/presentation/home/home_page.dart';
import 'package:padilni/presentation/onboarding/onboarding_page.dart';
import 'package:padilni/presentation/splashscreen/splash_screen.dart';

class AppRoutes 
{

  static const String base = "/";

  static const String home = "/home";
  
  static const String onboarding = "/onboarding";

  static List<GetPage> appRoutes =  [
    GetPage(name: base, page: ()=>SplashScreen()) ,
    GetPage(name: home, page: ()=>HomePage()) ,
    GetPage(name: onboarding, page: ()=>OnBoardingPage())

  ];
}
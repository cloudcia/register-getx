import 'package:get/get.dart';
import 'package:getx/controller/user_controller.dart';
import 'package:getx/pages/register.dart';
import 'package:getx/pages/profile_page.dart';
import 'package:getx/pages/register2.dart';

class Pages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/register',
      page: () => RegisterPage(),
    ),
    GetPage(
      name: '/complete_registration', // This should match the route you navigate to from page 1
      page: () => RegistrationPage2(),
    ),
    GetPage(
        name: '/profilePage',
        page : ()=> ProfilePage(),
    )
  ];
}


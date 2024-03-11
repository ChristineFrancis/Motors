

import 'package:carpro/binding/bottomNavBinding.dart';
import 'package:carpro/binding/carDetailsBinding.dart';
import 'package:carpro/binding/loginBinding.dart';
import 'package:carpro/binding/signupBinding.dart';
import 'package:carpro/mywidget/mycolor.dart';
import 'package:carpro/view/bottomnavbar.dart';
import 'package:carpro/view/carDetails.dart';
import 'package:carpro/view/filter.dart';
import 'package:carpro/view/home.dart';
import 'package:carpro/view/logIn.dart';
import 'package:carpro/view/signup1.dart';
import 'package:carpro/view/signup2.dart';
import 'package:carpro/view/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

MyColor myColor=MyColor();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialBinding: BottomNavBinding(),
    
      initialRoute:'/Welcome' ,
      getPages: [
        // ignore: prefer_const_constructors
        GetPage(name: '/CarDetails', page: ()=>CarDetails() , binding: CarDetailsBinding()),
        // ignore: prefer_const_constructors
        GetPage(name: '/Nav', page:()=> ButtomNavigationBar() ),
        GetPage(name: '/Welcome', page:()=> Welcome()),
        GetPage(name: '/Home', page: ()=> Home() ,  bindings: [BottomNavBinding() ]),
        GetPage(name: '/LogIn', page: ()=> LogIn() , binding: LoginBinding()),
        GetPage(name: '/SignUp1', page: ()=> SignUp1() , binding: SingnUpBinding()),
        GetPage(name: '/SignUp2', page: ()=> SignUp2()),
        GetPage(name: '/Filter', page: ()=> Filter()),
      
      ],
    );
  }
}


import 'package:campeonato_brasileiro/main/factories/pages/home_page_factory.dart';
import 'package:campeonato_brasileiro/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'factories/pages/login_page_factory.dart';

void main() {

  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Campeonato Brasileiro',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: [
         GetPage(name: '/', page: makeLoginPage,transition: Transition.fadeIn,),
      
        
          GetPage(name: '/home', page: makeHomePage,transition: Transition.fadeIn,)
      ],
    );
  }
}


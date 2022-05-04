import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_7days/routes/app_page.dart';
import 'package:getx_7days/routes/route_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.appPages,
      initialRoute: RouteNames.splashScreen,
    );
  }
}

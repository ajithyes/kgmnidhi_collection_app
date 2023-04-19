import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgm_nidhi/constants/resources.dart';
import 'package:kgm_nidhi/routes/page_routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return const MyApp();
    }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Resources.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutes.homePage,
      getPages: Routes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

// Routes Import
import 'app/routes/app_pages.dart';
// Theme Import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HIL Mobile',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark()
          .copyWith(primaryColor: Color.fromRGBO(1, 98, 153, 1)),
    );
  }
}

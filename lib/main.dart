import 'package:flutter/material.dart';
import 'presentations/config/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'presentations/widgets/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375.0, 812.0),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (BuildContext context, child) {
          return GetMaterialApp(
            title: 'Finance',
            debugShowCheckedModeBanner: false,
            initialRoute: RouteNames.mainScreen,
            onGenerateRoute: RouteNames.generateRoute,
            onUnknownRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ),
              );
            },
            theme: MyTheme.theme,
          );
        });
  }
}

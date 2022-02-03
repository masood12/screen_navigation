import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_navigation/core/utils/app_theme.dart';
import 'package:screen_navigation/routes/routes.dart';
import 'package:screen_navigation/screens/login_screen.dart';

import 'core/utils/screenutil_setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          statusBarColor:
          Colors.transparent //or set color with: Color(0xFF0000FF)
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () =>  MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        routes: AppRoutes,
      ),
    );
  }
}
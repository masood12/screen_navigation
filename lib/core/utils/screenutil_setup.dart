import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilSetup extends StatelessWidget {
  final Widget? child;

  const ScreenUtilSetup({Key? key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance!.window),
      child: Builder(
        builder: (BuildContext context) {

          ScreenUtil.init(
            BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: MediaQuery.of(context).size.height),
            designSize: Size(375, 812),
            orientation: Orientation.portrait
          );
          return child!;
        },
      ),
    );
  }
}

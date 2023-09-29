import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shred_prefere/screen/home_screen/view/stack_app.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => Sizer(

        builder: (context, orientation, deviceType) {
          return
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: ThemeData(useMaterial3: true),
            theme: ThemeData(
              useMaterial3: true,
            ),
            getPages: [
              GetPage(name: '/', page: () => StackApp()),
            ],
          );
        },

      ),
    ),
  );
}

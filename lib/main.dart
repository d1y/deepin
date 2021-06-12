import 'dart:io' show Platform;
import 'dart:math';

import 'package:deepin/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:window_size/window_size.dart' as window_size;

void main() {
  // TODO impl this
  // if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
  //   window_size.getWindowInfo().then((window) {
  //     if (window.screen != null) {
  //       final screenFrame = window.screen!.visibleFrame;
  //       final width = max((screenFrame.width / 2).roundToDouble(), 1100.0);
  //       final height = max((screenFrame.height / 2).roundToDouble(), 850.0);
  //       final left = ((screenFrame.width - width) / 2).roundToDouble();
  //       final top = ((screenFrame.height - height) / 3).roundToDouble();
  //       final frame = Rect.fromLTWH(left, top, width, height);

  //       window_size.setWindowFrame(frame);
  //       window_size.setWindowTitle('深度社区');

  //       window_size.setWindowMinSize(Size(800, 600));
  //       window_size.setWindowMaxSize(Size(1600, 1200));
  //     }
  //   });
  // }
  runApp(DeepinApp());
}

class DeepinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

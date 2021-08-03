import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/scanner/bindings/scanner_binding.dart';
import 'app/routes/app_pages.dart';
import 'const/themedata.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialBinding: ScannerBinding(),
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme().defaultTheme,
      themeMode: ThemeMode.dark,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

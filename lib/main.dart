import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone_app/constants/colors.dart';
import 'package:whatsapp_clone_app/responsive/responsive.dart';
import 'package:whatsapp_clone_app/screens/mobile_screen.dart';
import 'package:whatsapp_clone_app/screens/web_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  ).then(
    (_) => runApp(
      ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        minTextAdapt: true,
        builder: ((_, __) => const MyApp()),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        // colorScheme: const ColorScheme.dark(background: backgroundColor)
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreen(), webScreenLayout: WebScreen()),
    );
  }
}

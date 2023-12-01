import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/routes/router.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

final appRouter = RootRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
          textTheme: myTextTheme,
          useMaterial3: true,
        ),
        builder: (context, child) {
          return Scaffold(body: child);
        },
      ),
    );
  }
}

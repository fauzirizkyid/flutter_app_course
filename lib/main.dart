import 'package:flutter/material.dart';
import 'package:flutter_app/core/applications/app_bloc/app_bloc.dart';
import 'package:flutter_app/core/config/injection/injection.dart';
import 'package:flutter_app/core/config/routes/router.dart';
import 'package:flutter_app/core/config/theme/core/fonts/text_theme.dart';
import 'package:flutter_app/core/config/utils/simple_bloc_observer.dart';
import 'package:flutter_app/core/domain/storages/custom_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = CustomStorage();
  Bloc.observer = SimpleBlocObserver();
  configureInjection();
  runApp(const MyApp());
}

final appRouter = RootRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppBloc>()..add(const AppEvent.started()),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return ScreenUtilInit(
            child: MaterialApp.router(
              routerConfig: appRouter.config(),
              theme: ThemeData(
                textTheme: myTextTheme,
                useMaterial3: true,
                brightness: state.brightness,
              ),
              builder: (context, child) {
                return Scaffold(body: child);
              },
            ),
          );
        },
      ),
    );
  }
}

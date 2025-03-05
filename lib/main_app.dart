import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/theme/app_theme.dart';
import 'features/home/bloc/home_provider.dart';
import 'features/authentication/presentation/views/welcome_view.dart';

class Homzes extends StatelessWidget {
  const Homzes({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            HomeProvider(),
          ],
          child: MaterialApp(
            theme: AppThemeData.lightThemeData(),
            darkTheme: AppThemeData.darkThemeData(),
            debugShowCheckedModeBanner: false,
            home: child,
          ),
        );
      },
      child: const WelcomeView(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/layouts/mobile_layout.dart';
import 'package:quran_app/layouts/responsive_layout.dart';
import 'package:quran_app/layouts/web_layout.dart';
import 'package:quran_app/shared/local/cubit/app_cubit.dart';
import 'package:quran_app/shared/network/dio_helper.dart';
import 'package:quran_app/utils/colors.dart';

import 'shared/local/cubit/app_states.dart';
import 'shared/local/cubit/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  BlocOverrides.runZoned(
    () async {
      // Use cubits...

      DioHelper.init();

      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()),
        ],
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: backGroundColor
              ),
              home: ResponsiveLayout(
                webLayout: WebLayout(),
                mobileLayout: MobileLayout(),
              ),
            );
          },
        ));
  }
}

//https://api.quran.com/api/v4/chapters?language=ar

// chat background image
// https://raw.githubusercontent.com/RivaanRanawat/whatsapp-flutter-ui/main/assets/backgroundImage.png
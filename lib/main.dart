import 'package:currency_counter/controller/cubit/Auth/login/cubit.dart';
import 'package:currency_counter/controller/cubit/Auth/rigester/cubit.dart';
import 'package:currency_counter/controller/cubit/Auth/rigester/states.dart';
import 'package:currency_counter/controller/cubit/Count-Mony/cubit.dart';
import 'package:currency_counter/controller/service/bloc_observe.dart';
import 'package:currency_counter/controller/service/cash_helper.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/controller/service/theme.dart';
import 'package:currency_counter/view/screen/first_screen.dart';
import 'package:currency_counter/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await CashHelper.init();
  late Widget widget;
  uId = CashHelper.getData(key: 'uId');
  bool? isDarkModeEnabled = CashHelper.getData(key: 'isDark');
  print(isDarkModeEnabled);
  print(isDarkModeEnabled);
  if (uId != null) {
    widget = const MainScreen();
  } else {
    widget =  FirstScreen();
  }
  BlocOverrides.runZoned(
        () {
          runApp(
              MyApp(widget: widget,isDarkModeEnabled: isDarkModeEnabled,)
          );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {

  Widget? widget;
  final bool? isDarkModeEnabled ;

  MyApp({
    Key? key,
    this.widget,
    this.isDarkModeEnabled,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterMoneyLoginCubit()),
        BlocProvider(create: (context) => CountMomeyRigesterCubit()),
        BlocProvider(create: (context) => CounterCubit()..getUserData()),
      ],
      child: BlocConsumer < CountMomeyRigesterCubit , CountMoneyAppRigesterStates > (
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Count Money',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            home: widget,
          );
        },
      ),
    );
  }
}

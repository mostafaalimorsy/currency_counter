import 'package:currency_counter/controller/cubit/Auth/login/cubit.dart';
import 'package:currency_counter/controller/cubit/Auth/login/states.dart';
import 'package:currency_counter/view/widget/Auth/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <CounterMoneyLoginCubit,CounterMoneyAppLoginStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, CounterMoneyAppLoginStates state) {
        return Scaffold(
          body: loginWidget(context,(){}),
        );
      },
    );
  }
}

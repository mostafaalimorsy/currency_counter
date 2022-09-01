import 'package:currency_counter/controller/cubit/Auth/login/states.dart';
import 'package:currency_counter/controller/service/cash_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterMoneyLoginCubit extends Cubit<CounterMoneyAppLoginStates> {
  CounterMoneyLoginCubit() : super(IntialCounterMoneyAppLoginStates ());

  static CounterMoneyLoginCubit get(context) => BlocProvider.of(context);

  // ShopLoginModel? PostLogin ;
  // ShopLoginModel? GetLogin ;
  IconData suffix = Icons.visibility_outlined ;
  bool password = true;



  void GetLogin({required String email , required String password })  {
    emit(CounterMoneyAppLoadingStates());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
      var id= value.user!.uid;
      print(value.user!.uid);
      CashHelper.saveData(key: 'uId', value: value.user!.uid).then((value) => emit(CounterMoneyAppScuccessStates(id)));
    });


  }

  //To change Password Visiability
  void changPasswordVisiability( ){
    password = !password;
    suffix = password ?  Icons.visibility_outlined : Icons.visibility_off_outlined   ;
    emit(CounterMoneyChangPasswordVisabilityStates());


  }



}
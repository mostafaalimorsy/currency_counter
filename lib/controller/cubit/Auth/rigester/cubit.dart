import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:currency_counter/controller/cubit/Auth/rigester/states.dart';
import 'package:currency_counter/model/count_money_user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountMomeyRigesterCubit extends Cubit<CountMoneyAppRigesterStates> {
  CountMomeyRigesterCubit() : super(IntialCountMoneyAppRigesterStates());

  static CountMomeyRigesterCubit get(context) => BlocProvider.of(context);


  IconData suffix = Icons.visibility_outlined;

  bool password = true;



  void CreatUser(
      {required String email,
        required String name,
        required String uId,
        required String phone}) async {
    emit(CountMoneyAppLoadingCreateUsersStates());
    UserModel  model = UserModel(
        name: name,
        email: email,
        phone: phone,
        uId: uId,
        image: 'https://img.freepik.com/free-photo/man-with-laptop-thinking_1368-5024.jpg?t=st=1656880893~exp=1656881493~hmac=66292ed372d99d122326d94ce038797e363ff2a59820ce39e175058dafa396f7&w=740',
    );
    FirebaseFirestore.instance.collection('users').doc(uId).set(model.toMap()).then((value)
    {
      emit(CountMoneyAppSucessCreateUsersStates());
    });


  }

  // Auth data TO API
  void PostLogin(
      {required String email,
        required String password,
        required String name,
        required String phone}) async {
    emit(CountMoneyAppLoadingRigesterStates());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.email);
      print(value.user!.uid);
      CreatUser(email: email, name: name, phone: phone, uId: value.user!.uid);
    });
  }




  // To change Password Visiability
  void changPasswordVisiability() {
    password = !password;
    suffix =
    password ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(CountMoneyChangPasswordVisabilityRigesterStates());
  }
}
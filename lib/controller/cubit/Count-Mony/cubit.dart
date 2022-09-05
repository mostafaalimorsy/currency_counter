import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:currency_counter/controller/cubit/Count-Mony/states.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/model/count_money_user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>

{
  CounterCubit() : super(IntialCounterStates ());
  static CounterCubit get(context) => BlocProvider.of(context);






  UserModel? model;


  void getUserData(){
    emit(CounterLoadingStates());
    FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      model= UserModel.fromJson(value.data() as Map<String,dynamic>);
      print(value.data());
      emit(CounterScuccessStates());
    });
  }



  void updateUser({
    required String? name,
    required String? phone,
    required String? email,
    String? image,

  }) {
    emit(CounterScuccessUpdateStates());
    UserModel socialUserModel = UserModel(
      name: name,
      phone: phone,
      uId: uId,
      email: email,
      image: image ?? "model!.image",
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .update(socialUserModel.toMap())
        .then((value) {
      getUserData();
      emit(CounterScuccessUpdateStates());
    }).catchError((erorr) {
      print(erorr);
      emit(CounterErrorUpdateStates());
    });
  }
}
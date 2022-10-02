import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:currency_counter/controller/cubit/Count-Mony/states.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/model/count_money_user_model.dart';
import 'package:currency_counter/model/data_model.dart';
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



  void createBill({
    String? uId,
    required String? title,
    required String? dateTime,
    String? phone,
    String? email,
    String? description,
    required int? count0,
    required int? count1,
    required int? count2,
    required int? count3,
    required int? count4,
    required int? count5,
    required int? count6,
    required int? count7,
    int? result0,
    int? result1,
    int? result2,
    int? result3,
    int? result4,
    int? result5,
    int? result6,
    int? result7,
    int? resultAll,
  }) {
    emit(CounterLoadingDataCreateStates());
    DataModel dataModel = DataModel(
      title: title,
      uId: model!.uId,
      dateTime: dateTime,
      phone: phone,
      email: email,
      description: description,
      count0: count0,
      count1: count1,
      count2: count2,
      count3: count3,
      count4: count4,
      count5: count5,
      count6: count6,
      count7: count7,
      result0: result0,
      result1: result1,
      result2: result2,
      result3: result3,
      result4: result4,
      result5: result5,
      result6: result6,
      result7: result7,
      resultAll: resultAll
    );
    FirebaseFirestore.instance
        .collection("data")
        .add(dataModel.toMap())
        .then((value) {
      emit(CounterScuccessDataCreateStates());
    }).catchError((erorr) {
      emit(CounterErrorDataCreateStates());
    });
  }
}
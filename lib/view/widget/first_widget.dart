import 'dart:ui';
import 'package:currency_counter/controller/cubit/Auth/login/cubit.dart';
import 'package:currency_counter/controller/cubit/Auth/login/states.dart';
import 'package:currency_counter/controller/service/cash_helper.dart';
import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/screen/home_screen.dart';
import 'package:currency_counter/view/screen/login_screen.dart';
import 'package:currency_counter/view/screen/rigester_screen.dart';
import 'package:currency_counter/view/widget/cusyom_auth_button.dart';
import 'package:currency_counter/view/widget/CUSTOM_TEXT_FORM_FIELD.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget FirstWidget(context) {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passwdcontroller = TextEditingController();

  if (kIsWeb) {
    //web design
    return BlocConsumer <CounterMoneyLoginCubit, CounterMoneyAppLoginStates>(
      listener: (BuildContext context, state) {

      if (state is CounterMoneyAppScuccessStates) {
        msgAlarm(
          msg: "the Login operation is success",
          states: ToastStates.SUCCESS,
          textColor: Colors.white,
        );
        CashHelper.saveData(key: 'uId', value: state.Uid).then((value) {
          navigatReplace(context, const MainScreen());
        });
      }

      },
      builder: (BuildContext context, CounterMoneyAppLoginStates state) {
        CounterMoneyLoginCubit getData = CounterMoneyLoginCubit.get(context);
        return SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 400,
                        child: Form(
                          key: formkey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 50,
                                  child: Image.asset("assets/img/5126108591600459985-128.png"),
                                ),
                              ),
                              SizedBox(height: 70,),
                              Center(
                                child: Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                              ),
                              MyDivider(double.infinity),
                              const SizedBox(
                                height: 5,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              defaultTextForm(
                                  msg: 'please enter your e-mail',
                                  type: TextInputType.emailAddress,
                                  labelText: "Email",
                                  hintText: "text@email.com",
                                  controller: emailcontroller,
                                  icon: Icons.email_outlined),
                              const SizedBox(
                                height: 15,
                              ),
                              defaultTextForm(
                                  msg: 'please enter your password',
                                  type: TextInputType.visiblePassword,
                                  labelText: "password",
                                  hintText: "******",
                                  controller: passwdcontroller,
                                  icon: Icons.lock_outline,
                                  passwd: getData.password,
                                  visableIcon: getData.suffix,
                                  onTap: () {
                                     getData.changPasswordVisiability();
                                  }),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "have an account yet ? please check your app ",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.underline),
                                  ),
                                  Card(
                                    color: Color.fromRGBO(182, 239, 18, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: TextButton(
                                        onPressed: () {
                                          if (formkey.currentState!.validate()) {
                                            getData.GetLogin(
                                                email: emailcontroller.text,
                                                password: passwdcontroller.text);
                                          }
                                        },
                                        child: Container(
                                          alignment: AlignmentDirectional.centerEnd,
                                          width: 80,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.login_rounded,
                                                color: Colors.black,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Login",
                                                style: TextStyle(color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 100,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height,
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                          child: Image.asset(
                            'assets/img/first_view.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 250,),
                            DelayedDisplay(
                                delay: Duration(seconds: 1),
                                child: Text(
                                  "Counting ",
                                  style: TextStyle(fontSize: 40),
                                )),
                            DelayedDisplay(
                              delay: Duration(seconds: 2),
                              child: Text(
                                "your Money",
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                            DelayedDisplay(
                              delay: Duration(seconds: 3),
                              child: Text(
                                "is easy now, with us.",
                                style: TextStyle(fontSize: 45),
                              ),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  } else {
    return Stack(
      children: [
        Image.asset(
          "assets/img/5.jpg",
          fit: BoxFit.fitHeight,
          width: double.infinity,
          height: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 30,
              ),
              AuthButton(  "Sign up" , (){

                navigatTo(context, RigesterScreen());

              }),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account yet ? ",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  TextButton(
                    onPressed: () {
                      navigatTo(context,LoginScreen() );
                    },
                    child: Text("Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            fontSize: 17)),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

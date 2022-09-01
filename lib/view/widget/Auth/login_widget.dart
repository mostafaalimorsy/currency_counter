import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:currency_counter/controller/cubit/Auth/login/cubit.dart';
import 'package:currency_counter/controller/cubit/Auth/login/states.dart';
import 'package:currency_counter/controller/service/cash_helper.dart';
import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/view/screen/home_screen.dart';
import 'package:currency_counter/view/screen/rigester_screen.dart';
import 'package:currency_counter/view/widget/cusyom_auth_button.dart';
import 'package:currency_counter/view/widget/CUSTOM_TEXT_FORM_FIELD.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget loginWidget(context, VoidCallback? onpressed) {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passwdcontroller = TextEditingController();
  return BlocConsumer<CounterMoneyLoginCubit, CounterMoneyAppLoginStates>(
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
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOGIN",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.black),
                ),
                Text(
                  "Login now to access your bills",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Auth
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
                //password
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

                const SizedBox(
                  height: 15,
                ),
                //Rigester button
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          navigatTo(context, RigesterScreen());
                        },
                        child: Text("Sign up",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            )),
                      )
                    ],
                  ),
                ),
                ConditionalBuilder(
                  condition: state is! CounterMoneyAppLoadingStates,
                  fallback: (BuildContext context) {
                    return Center(child: CircularProgressIndicator(),);
                  },
                  builder: (BuildContext context) {
                    return AuthButton("Sign-in", () {
                      if (formkey.currentState!.validate()) {
                        getData.GetLogin(
                            email: emailcontroller.text,
                            password: passwdcontroller.text);
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

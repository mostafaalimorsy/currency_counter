
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:currency_counter/controller/cubit/Auth/rigester/cubit.dart';
import 'package:currency_counter/controller/cubit/Auth/rigester/states.dart';
import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/view/screen/home_screen.dart';
import 'package:currency_counter/view/widget/CUSTOM_TEXT_FORM_FIELD.dart';
import 'package:currency_counter/view/widget/cusyom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget RigeterWidget(context) {
  var formKey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passwdcontroller = TextEditingController();
  var namecontroller = TextEditingController();
  var phonecontroller = TextEditingController();

      return  BlocConsumer < CountMomeyRigesterCubit , CountMoneyAppRigesterStates > (
        listener: (BuildContext context, state) {
          if (state is CountMoneyAppSucessCreateUsersStates){

            navigatReplace(context, MainScreen());
          }
        },
        builder: (BuildContext context, CountMoneyAppRigesterStates state) {
          CountMomeyRigesterCubit getData = CountMomeyRigesterCubit.get(context);
          return Center(
              child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //title of screen
                          Text(
                            "Sign-up",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                ?.copyWith(color: Colors.black),
                          ),
                          //DEscription of screen
                          Text(
                            "Sign-up to Counting your money",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //name
                          defaultTextForm(
                              msg: 'please enter your Name',
                              type: TextInputType.name,
                              labelText: "Name",
                              hintText: "Test",
                              controller: namecontroller,
                              icon: Icons.person),
                          SizedBox(
                            height: 15,
                          ),
                          //phone
                          defaultTextForm(
                              msg: 'please enter your phone',
                              type: TextInputType.phone,
                              labelText: "phone",
                              hintText: "01xxxxxxxxx",
                              controller: phonecontroller,
                              icon: Icons.phone),
                          SizedBox(
                            height: 15,
                          ),
                          //login
                          defaultTextForm(
                              msg: 'please enter your e-mail',
                              type: TextInputType.emailAddress,
                              labelText: "Email",
                              hintText: "text@email.com",
                              controller: emailcontroller,
                              icon: Icons.email_outlined),

                          SizedBox(
                            height: 15,
                          ),
                          //password
                          defaultTextForm(
                            onSubmitted: (value) {
                              if (formKey.currentState!.validate()) {
                                getData.PostLogin(
                                  email: emailcontroller.text,
                                  password: passwdcontroller.text,
                                  phone: phonecontroller.text ,
                                  name: namecontroller.text,

                                );
                                print(emailcontroller.text);
                                print(passwdcontroller.text);
                              }
                            },
                            msg: 'please enter your password',
                            type: TextInputType.visiblePassword,
                            labelText: "password",
                            hintText: "******",
                            controller: passwdcontroller,
                            icon: Icons.lock_outline,
                            passwd: getData.password,
                            onTap: (){
                               getData.changPasswordVisiability();
                            },
                            visableIcon: getData.suffix,
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          //Login  Button

                          SizedBox(
                            height: 15,
                          ),
                          ConditionalBuilder(
                            condition: state is! CountMoneyAppLoadingRigesterStates,
                            fallback: (BuildContext context) {
                              return Center(child: CircularProgressIndicator(),);
                            },
                            builder: (BuildContext context) {
                              return  AuthButton("Sign-up", () {
                                if (formKey.currentState!.validate()) {
                                  getData.PostLogin(
                                      name: namecontroller.text,
                                      phone: phonecontroller.text,
                                      email: emailcontroller.text,
                                      password: passwdcontroller.text);
                                  print(emailcontroller.text);
                                  print(passwdcontroller.text);
                                }
                              });
                            },
                          ),

                        ],
                      ),
                    ),
                  )));
        },
      );



}

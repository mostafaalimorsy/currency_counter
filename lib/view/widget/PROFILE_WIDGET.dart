import 'package:currency_counter/controller/cubit/Count-Mony/cubit.dart';
import 'package:currency_counter/controller/cubit/Count-Mony/states.dart';
import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/widget/CUSTOM_TEXT_FORM_FIELD.dart';
import 'package:currency_counter/view/widget/cusyom_auth_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget Profile(context) {
  var formKey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var namecontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  return BlocConsumer<CounterCubit, CounterStates>(
    listener: (BuildContext context, state) {},
    builder: (BuildContext context, CounterStates state) {
      CounterCubit getData=CounterCubit.get(context);
      var userModel = getData.model;
      var token= userModel!.uId ;
      namecontroller.text = userModel.name!;
      emailcontroller.text = userModel.email!;
      phonecontroller.text = userModel.phone!;
      if (kIsWeb)
      {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 80,),
                      CircleAvatar(
                        radius: 64,
                        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 80,
                              backgroundImage: NetworkImage(
                                 "https://img.freepik.com/free-photo/man-with-laptop-thinking_1368-5024.jpg?t=st=1656880893~exp=1656881493~hmac=66292ed372d99d122326d94ce038797e363ff2a59820ce39e175"),
                            ),
                            CircleAvatar(
                                radius: 16,
                                backgroundColor: defaultColor,
                                child: IconButton(
                                    onPressed: () {
                                      // getData.getProfileImage();
                                    },
                                    icon: Icon(
                                      Icons.camera_alt_outlined,
                                      size: 16,
                                      color: Colors.white,

                                    )))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Personal Information",style: TextStyle(fontSize: 30),),
                        MyDivider(300),
                        SizedBox(height: 100,),
                        defaultTextForm(
                            labelText: "Name",
                            hintText: "your name",
                            type: TextInputType.name,
                            icon: Icons.account_circle_outlined,
                            msg: "Check Name again",
                            controller: namecontroller),
                        SizedBox(
                          height: 15,
                        ),
                        defaultTextForm(
                            labelText: "Cellphone",
                            hintText: "01xxxxxxx",
                            type: TextInputType.name,
                            icon: Icons.phone,
                            msg: 'Enter your phone',
                            controller: phonecontroller),
                        SizedBox(
                          height: 15,
                        ),
                        defaultTextForm(
                            labelText: "email",
                            hintText: "text@gmail.com",
                            type: TextInputType.name,
                            icon: Icons.email_outlined,
                            msg: 'Enter your email',
                            controller: emailcontroller),
                        SizedBox(height: 15,),
                        AuthButton("Update", () {
                          getData.updateUser(
                              name: namecontroller.text,
                              phone: phonecontroller.text,
                              email: emailcontroller.text

                          ); }
                       ),
                        SizedBox(height: 200,),
                      ],
                    ),
                  ),
                )



              ],
            ),
          ),
        );
      }
      else
      {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                             userModel.image!),
                        ),
                        CircleAvatar(
                            radius: 16,
                            backgroundColor: defaultColor,
                            child: IconButton(
                                onPressed: () {
                                  // getData.getProfileImage();
                                },
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 16,
                                  color: Colors.white,

                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaultTextForm(
                      labelText: "Name",
                      hintText: "your name",
                      type: TextInputType.name,
                      icon: Icons.account_circle_outlined,
                      msg: "Check Name again",
                      controller: namecontroller),
                  SizedBox(
                    height: 15,
                  ),
                  defaultTextForm(
                      labelText: "Cellphone",
                      hintText: "01xxxxxxx",
                      type: TextInputType.name,
                      icon: Icons.phone,
                      msg: 'Enter your phone',
                      controller: phonecontroller),
                  SizedBox(
                    height: 15,
                  ),
                  defaultTextForm(
                      labelText: "email",
                      hintText: "text@gmail.com",
                      type: TextInputType.name,
                      icon: Icons.email_outlined,
                      msg: 'Enter your email',
                      controller: emailcontroller),
                  SizedBox(
                    height: 15,
                  ),
                  AuthButton("Update",(){
                    getData.updateUser(
                      name: namecontroller.text, phone: phonecontroller.text, email: emailcontroller.text,
                    );
                  }),

                ],
              ),
            ),
          ),
        );
      }
    },
  );
}

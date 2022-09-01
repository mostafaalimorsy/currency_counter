import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/widget/CUSTOM_TEXT_FORM_FIELD.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget Profile(context)
{
  var formKey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var namecontroller = TextEditingController();
  var phonecontroller = TextEditingController();
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
                            radius: 60,
                            backgroundImage: NetworkImage(
                                "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1658625904~exp=1658626504~hmac=3c0d38951e67d80edfe53e683de0b4008fee2fb80619c9959a18360f4a908b83&w=740"),
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
                          hintText: "Ahmed Hassan",
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
                            "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1658625904~exp=1658626504~hmac=3c0d38951e67d80edfe53e683de0b4008fee2fb80619c9959a18360f4a908b83&w=740"),
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
                    hintText: "Ahmed Hassan",
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

              ],
            ),
          ),
        ),
      );
    }

}
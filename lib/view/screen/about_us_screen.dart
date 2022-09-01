import 'package:currency_counter/controller/service/constant.dart';
import 'package:flutter/material.dart';

class AboutusScreen extends StatefulWidget {
  const AboutusScreen({Key? key}) : super(key: key);

  @override
  State<AboutusScreen> createState() => _AboutusScreenState();
}

class _AboutusScreenState extends State<AboutusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About & contacts"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: defaultColor,
              )),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.black45,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1658625904~exp=1658626504~hmac=3c0d38951e67d80edfe53e683de0b4008fee2fb80619c9959a18360f4a908b83&w=740"),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}

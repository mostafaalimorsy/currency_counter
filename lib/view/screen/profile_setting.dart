import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/widget/PROFILE_WIDGET.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: defaultColor,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.save_as_rounded,
                color: defaultColor,
              ))
        ],
      ),
      body: Profile(context),
    );
  }
}

import 'package:currency_counter/controller/cubit/Count-Mony/cubit.dart';
import 'package:currency_counter/controller/cubit/Count-Mony/states.dart';
import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/widget/CUSTOM_TEXT_FORM_FIELD.dart';
import 'package:currency_counter/view/widget/PROFILE_WIDGET.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
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
          ),
          body: Profile(context),
        );
      },
    );
  }
}






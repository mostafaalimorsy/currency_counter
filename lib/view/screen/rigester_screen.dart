import 'package:currency_counter/controller/cubit/Auth/rigester/cubit.dart';
import 'package:currency_counter/controller/cubit/Auth/rigester/states.dart';
import 'package:currency_counter/view/widget/Auth/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RigesterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer  < CountMomeyRigesterCubit , CountMoneyAppRigesterStates > (
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, CountMoneyAppRigesterStates state) {
        return Scaffold(
          body: RigeterWidget(context),
        );
      },
    );
  }
}

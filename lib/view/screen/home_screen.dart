import 'package:currency_counter/controller/cubit/Count-Mony/cubit.dart';
import 'package:currency_counter/controller/cubit/Count-Mony/states.dart';
import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/screen/add_new_bill.dart';
import 'package:currency_counter/view/screen/first_screen.dart';
import 'package:currency_counter/view/screen/login_screen.dart';
import 'package:currency_counter/view/screen/profile_setting.dart';
import 'package:currency_counter/view/widget/home_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer< CounterCubit, CounterStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context,  CounterStates state) {

          CounterCubit getData=CounterCubit.get(context);
          // var userModel= getData.model!;

        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: defaultColor),
            title: InkWell(
              onTap: (){
                navigatTo(context, ProfileScreen());
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black45,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          getData.model!.image!),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        getData.model!.name!,
                      ),
                      Text(
                      getData.model!.email!,
                        style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //logout
            actions: [
              IconButton(icon:Icon(Icons.add_task,color: defaultColor,) , onPressed: () {
                navigatTo(context, AddNewBillScreen());
              },),
              IconButton(icon:Icon(Icons.logout_outlined,color: defaultColor,) , onPressed: () {
                navigatTo(context, FirstScreen());
              },),
            ],

          ),
          body: HomeScreen(),
        );
      },
    );
  }
}

import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/widget/deatils_widget.dart';
import 'package:flutter/material.dart';

class DeatilsScreen extends StatelessWidget {
  const DeatilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,color: defaultColor,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.print,color: defaultColor,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.copy_rounded,color: defaultColor,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share,color: defaultColor,)),
        ],
      ),
      body: SingleChildScrollView(child: DeatilsWidget()),
    );
  }
}

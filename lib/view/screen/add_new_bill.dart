import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/widget/add_new_bill_widget.dart';
import 'package:flutter/material.dart';

class AddNewBillScreen extends StatelessWidget {
  const AddNewBillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,color: defaultColor,)),
      ),
      body: AddNewBill(),
    );
  }
}

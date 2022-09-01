import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/view/widget/CUSTOM_TEXT_FORM_FIELD.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget AddNewBill() {
  if (kIsWeb) {
    return Row(
      children: [
        Expanded(
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Information :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  ),
                  MyDivider(300),
                  Spacer(),
                  defaultTextForm(
                    msg: "Enter The Title",
                    labelText: "Title",
                    hintText: "title to remember with"
                  ),
                  Spacer(),
                  defaultTextForm(
                      labelText: "Date",
                      hintText: "11/11/2011"
                  ),
                  Spacer(),
                  defaultTextForm(
                      labelText: "Cell Phone",
                      hintText: "01x xxxx xxx"
                  ),
                  Spacer(),
                  defaultTextForm(
                      labelText: "Email",
                      hintText: "agent@gmail.com"
                  ),
                  Spacer(),
                  defaultTextForm(
                      labelText: "Description",
                      hintText: "type deatils that what you need to remember"
                  ),

                ],
              ),
        )),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Center(child: Text("Financial Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
                ),
                Center(child: MyDivider(300)),
                // 1/2 and 1
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "1/2",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "1",
                        ),
                      ),
                    ),
                  ],
                ),
                // 5 and 10
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "5",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "10",
                        ),
                      ),
                    ),
                  ],
                ),
                // 20 and 50
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "20",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "50",
                        ),
                      ),
                    ),
                  ],
                ),
                // 100 and 200
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "100",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Count if none enter zero",
                          labelText: "200",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Subtotel is ",style: TextStyle(fontSize: 25),),
                    Text("200000 L.E",style: TextStyle(fontSize: 25,color: Colors.green),)
                  ],
                ),
                SizedBox(height: 100,)


              ],
            )),
      ],
    );
  } else {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Information :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            MyDivider(250),
            SizedBox(height: 15,),
            defaultTextForm(
                msg: "Enter The Title",
                labelText: "Title",
                hintText: "title to remember with"
            ),
            SizedBox(height: 15,),
            defaultTextForm(
                labelText: "Date",
                hintText: "11/11/2011"
            ),
            SizedBox(height: 15,),
            defaultTextForm(
                labelText: "Cell Phone",
                hintText: "01x xxxx xxx"
            ),
            SizedBox(height: 15,),
            defaultTextForm(
                labelText: "Email",
                hintText: "agent@gmail.com"
            ),
            SizedBox(height: 15,),
            defaultTextForm(
                labelText: "Description",
                hintText: "type deatils that what you need to remember"
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Financial Category :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            MyDivider(300),
            // 1/2 and 1
            SizedBox(height: 15,),
            defaultTextForm(
                msg: "Enter Count if none Enter 0",
                labelText:  "1/2",
                hintText: "Enter Count if none enter zero",
            ),
            SizedBox(height: 15,),
            defaultTextForm(
              msg: "Enter Count if none Enter 0",
              labelText:  "1",
              hintText: "Enter Count if none enter zero",
            ),
            SizedBox(height: 15,),
            defaultTextForm(
              msg: "Enter Count if none Enter 0",
              labelText:  "5",
              hintText: "Enter Count if none enter zero",
            ),
            SizedBox(height: 15,),
            defaultTextForm(
              msg: "Enter Count if none Enter 0",
              labelText:  "10",
              hintText: "Enter Count if none enter zero",
            ),
            SizedBox(height: 15,),
            defaultTextForm(
              msg: "Enter Count if none Enter 0",
              labelText:  "20",
              hintText: "Enter Count if none enter zero",
            ),
            SizedBox(height: 15,),
            defaultTextForm(
              msg: "Enter Count if none Enter 0",
              labelText:  "50",
              hintText: "Enter Count if none enter zero",
            ),
            SizedBox(height: 15,),
            defaultTextForm(
              msg: "Enter Count if none Enter 0",
              labelText:  "100",
              hintText: "Enter Count if none enter zero",
            ),
            SizedBox(height: 15,),
            defaultTextForm(
              msg: "Enter Count if none Enter 0",
              labelText:  "200",
              hintText: "Enter Count if none enter zero",
            ),

            SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Subtotel is ",style: TextStyle(fontSize: 25),),
                Text("200000 L.E",style: TextStyle(fontSize: 25,color: Colors.green),)
              ],
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}

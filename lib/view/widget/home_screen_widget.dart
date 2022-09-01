import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/view/screen/deatils_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget HomeScreen() {
  if (kIsWeb) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, index) => InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 100,
                        width: double.infinity,
                        child: Card(
                            color: Colors.grey.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.article_outlined),
                                    title: Row(
                                      children: [
                                        Text(
                                          "Bills of Ahmed",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text(
                                              "20,000 L.E",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "20-5-2022",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                separatorBuilder: (BuildContext context, index) => SizedBox(
                      height: 2,
                    ),
                itemCount: 10),
          ),
        ),
        //deatils screen
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.print,color: defaultColor,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.copy_rounded,color: defaultColor,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.share,color: defaultColor,)),
                        ],
                      ),
                      //titel and date
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 18),
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(Icons.account_circle_outlined,color: Colors.grey,),
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Title :"),
                                            Text("Bills of ahmed",style: TextStyle(color: Colors.grey.shade500),),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 18),
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(Icons.date_range,color: Colors.grey,),
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Date :"),
                                            Text("22/7/2022",style: TextStyle(color: Colors.grey.shade500),),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      //phone number  and email
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 18),
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(Icons.phone,color: Colors.grey,),
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Cell Phone :"),
                                            Text("0123456789",style: TextStyle(color: Colors.grey.shade500),),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 18),
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(Icons.email_outlined,color: Colors.grey,),
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("E-mail :"),
                                            Text("ahmed.ahmed@gmail.com",style: TextStyle(color: Colors.grey.shade500),),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      // description
                      Container(
                        padding: EdgeInsets.only(left: 18),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.description_outlined,color: Colors.grey,),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Description :"),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        height: 150,
                                        width: 500,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade500),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintockContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",style: TextStyle(color: Colors.grey.shade500),),
                                      )

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      // table of currency
                      Container(
                        padding: EdgeInsets.only(left: 18),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.description_outlined,color: Colors.grey,),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Deatils :"),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        height: 220,
                                        width: 500,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade500),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            //financial cat
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("Financial Category",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("1/2",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("1",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("10",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("20",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("50",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("100",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("200",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("Sub totel",style: TextStyle(color: Colors.grey.shade500),),
                                              ],
                                            ),
                                            // mult mark
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("×",style: TextStyle(color: Colors.grey.shade500),),
                                                Text(" ",style: TextStyle(color: Colors.grey.shade500),),
                                              ],
                                            ),
                                            //count
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("Count",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text(" ",style: TextStyle(color: Colors.grey.shade500),),
                                              ],
                                            ),
                                            //= mark
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("=",style: TextStyle(color: Colors.grey.shade500),),
                                              ],
                                            ),
                                            //totel
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("Totel",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("2.5",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("5.0",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("25.0",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("50.0",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("100.0",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("250.0",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("500.0",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("1000.0",style: TextStyle(color: Colors.grey.shade500),),
                                                Text("1932.5",style: TextStyle(color: Colors.grey.shade500),),
                                              ],
                                            ),

                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        )
      ],
    );
  } else {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: ListView.separated(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, index) => InkWell(
                onTap: () {
                  navigatTo(context, DeatilsScreen());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  width: double.infinity,
                  child: Card(
                      color: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.article_outlined),
                              title: Row(
                                children: [
                                  Text(
                                    "Bills of Ahmed",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text(
                                        "20,000 L.E",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    "20-5-2022",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
          separatorBuilder: (BuildContext context, index) => SizedBox(
                height: 2,
              ),
          itemCount: 10),
    );
  }
}



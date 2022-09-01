import 'package:flutter/material.dart';

Widget DeatilsWidget() {
  return Column(
    children: [
      //title
      Container(
        padding: EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title :"),
                      Text(
                        "Bills of ahmed",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      //date
      Container(
        padding: EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.date_range,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date :"),
                      Text(
                        "22/7/2022",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      // cell phone
      Container(
        padding: EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cell Phone :"),
                      InkWell(
                        onTap: (){},
                          child: Text(
                        "0123456789",
                        style: TextStyle(color: Colors.grey.shade500),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      //email
      Container(
        padding: EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("E-mail :"),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "ahmed.ahmed@gmail.com",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      // description
      Container(
        padding: EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.description_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description :"),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintockContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
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
                      Icon(
                        Icons.description_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deatils :"),
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 250,
                        width: 300,
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
                                Text(
                                  "Financial Category",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "1/2",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "50",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "100",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "200",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "Sub totel",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            // mult mark
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "×",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  " ",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            //count
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Count",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  " ",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            //= mark
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "=",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            //totel
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Totel",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "2.5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "5.0",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "25.0",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "50.0",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "100.0",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "250.0",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "500.0",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "1000.0",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                Text(
                                  "1932.5",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
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
  );
}

import 'package:currency_counter/controller/service/componans.dart';
import 'package:currency_counter/controller/service/constant.dart';
import 'package:currency_counter/generated/locale_keys.g.dart';
import 'package:currency_counter/view/screen/about_us_screen.dart';
import 'package:currency_counter/view/screen/add_new_bill.dart';
import 'package:currency_counter/view/screen/profile_setting.dart';
import 'package:currency_counter/view/widget/home_screen_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: defaultColor),
        title: Row(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.black45,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1658625904~exp=1658626504~hmac=3c0d38951e67d80edfe53e683de0b4008fee2fb80619c9959a18360f4a908b83&w=740"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mostafa Morsy",
                ),
                Text(
                  "test@gmail.com",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
              ],
            )
          ],
        ),
        //logout
        actions: [
          IconButton(icon:Icon(Icons.add_task,color: defaultColor,) , onPressed: () {
            navigatTo(context, AddNewBillScreen());
          },),
          IconButton(icon:Icon(Icons.logout_outlined,color: defaultColor,) , onPressed: () {  },),
        ],

      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // img and name
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.black45,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1658625904~exp=1658626504~hmac=3c0d38951e67d80edfe53e683de0b4008fee2fb80619c9959a18360f4a908b83&w=740"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Mostafa Morsy",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //dark
          ListTile(
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      // CashHelper.saveData(key: 'isDark', value: getData.isDarkModeEnabled);
                      // getData.changeAppMode();
                    },
                    icon: const Icon(
                      Icons.brightness_4_outlined,
                      size: 35,
                      color: defaultColor,
                    )),
                SizedBox(
                  width: 10,
                ),
                // Text('Dark mode is ' + (getData.isDarkModeEnabled ? 'enabled' : 'disabled') + '.'),
                Text('Dark mode is disabled '),
              ],
            ),
            onTap: () {
              // getData.changeAppMode();
              // Navigator.pop(context);
            },
          ),
          //lang
          ListTile(
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      // CashHelper.saveData(key: 'isDark', value: getData.isDarkModeEnabled);
                      // getData.changeAppMode();
                    },
                    icon: const Icon(
                      Icons.language_outlined,
                      size: 35,
                      color: defaultColor,
                    )),
                SizedBox(
                  width: 10,
                ),
                // Text('Dark mode is ' + (getData.isDarkModeEnabled ? 'enabled' : 'disabled') + '.'),
                Text('Language is En '),
              ],
            ),
            onTap: () {
              // getData.changeAppMode();
              // Navigator.pop(context);
            },
          ),
          //Account edit
          ListTile(
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      navigatTo(context, ProfileScreen());
                    },
                    icon: const Icon(
                      Icons.manage_accounts_rounded,
                      size: 35,
                      color: defaultColor,
                    )),
                SizedBox(
                  width: 10,
                ),
                // Text('Dark mode is ' + (getData.isDarkModeEnabled ? 'enabled' : 'disabled') + '.'),
                Text(LocaleKeys.setting).tr(),
              ],
            ),
            onTap: () {
              navigatTo(context, ProfileScreen());

            },
          ),
          MyDivider(double.infinity),
          //About   us
          ListTile(
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      navigatTo(context, AboutusScreen());
                      // CashHelper.saveData(key: 'isDark', value: getData.isDarkModeEnabled);
                      // getData.changeAppMode();
                    },
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      size: 35,
                      color: defaultColor,
                    )),
                SizedBox(
                  width: 10,
                ),
                // Text('Dark mode is ' + (getData.isDarkModeEnabled ? 'enabled' : 'disabled') + '.'),
                Text(LocaleKeys.aboutus).tr(),
              ],
            ),
            onTap: () {
              navigatTo(context, AboutusScreen());
              // getData.changeAppMode();
              // Navigator.pop(context);
            },
          ),
        ],
      )),
      body: HomeScreen(),
    );
  }
}

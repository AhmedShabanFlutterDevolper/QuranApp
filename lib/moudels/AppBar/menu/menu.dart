import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quran/shared/components/componenets.dart';

import 'Screans/Detatils.dart';
import 'Screans/Setting.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: ClipRRect(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(200)),
          child: SizedBox(
              width: 250,
              child: Drawer(
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                        ),
                        accountName: Center(
                          child: new CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/titleIcon.png'),
                          ),
                        ),
                        accountEmail: Center(
                          child: new Text(
                            'Quran',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              fontFamily: 'Caprasimo',
                            ),
                          ),
                        ),
                      ),
                    ),
                    new ListTile(
                      onTap: () {
                        NavigatorTo(context, SettingsScrean());
                      },
                      title: Row(
                        children: [
                          Text(
                            ' Setting ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Icon(
                            Icons.settings,
                            size: 40,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    line1(context),
                    new ListTile(
                      onTap: () {},
                      title: Row(
                        children: [
                          Text(
                            ' Share ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.share,
                            size: 40,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    line1(context),
                    new ListTile(
                      onTap: () {},
                      title: Row(
                        children: [
                          Text(
                            ' Assess ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.comment,
                            size: 40,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    line1(context),
                    new ListTile(
                      onTap: () {
                        NavigatorTo(context, detailsScrean());
                      },
                      title: Row(
                        children: [
                          Text(
                            ' Details about the developer ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.account_circle,
                            size: 40,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    line2(context),
                    new ListTile(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      title: Row(
                        children: [
                          Text(
                            ' Close ',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(
                            Icons.close,
                            size: 40,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}

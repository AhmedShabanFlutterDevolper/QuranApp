import 'package:flutter/material.dart';

import '../../../../../shared/components/componenets.dart';
import '../../Home.dart';
import 'frogivenees.dart';

class end1Screan1 extends StatefulWidget {
  const end1Screan1({super.key});

  @override
  State<end1Screan1> createState() => _end1Screan1State();
}

class _end1Screan1State extends State<end1Screan1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: Colors.amber,
              width: 5,
            )),
        leadingWidth: 100,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/titleIcon.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Quran',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 730,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300]),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$onTap5',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                    color: Colors.amber),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                ':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'سبحان الله',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey[500]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$onTap6',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                    color: Colors.amber),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                ':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'سبحان الله',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey[500]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$onTap7',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                    color: Colors.amber),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                ':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'سبحان الله',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey[500]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '${onTap5 + onTap6 + onTap7}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                    color: Colors.amber),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                ':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'المجموع',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(50)),
                          color: Colors.amber),
                      child: MaterialButton(
                        onPressed: () {
                          NavigatorTo(context, HomeScrean());
                        },
                        child: Icon(
                          Icons.home,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(50)),
                          color: Colors.amber),
                      child: MaterialButton(
                        onPressed: () {
                          NavigatorTo(context, frogiveneesScrean());
                        },
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

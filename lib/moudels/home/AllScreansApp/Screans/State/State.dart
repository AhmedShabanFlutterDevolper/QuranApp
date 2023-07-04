import 'package:flutter/material.dart';

import '../../../../../shared/components/componenets.dart';

class StateScrean extends StatelessWidget {
  const StateScrean({super.key});

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
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        child: Text(
                          '${onTap1 + onTap2 + onTap3 + onTap4}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'التسبيح',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 30),
                      ),
                    )
                  ],
                ),
              ),
              line(context),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        child: Text(
                          '${onTap5 + onTap6 + onTap7}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'الاستغفار',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 30),
                      ),
                    )
                  ],
                ),
              ),
              line(context),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        child: Text(
                          '$onTap',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'الصلاة علي النبي',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 27),
                      ),
                    )
                  ],
                ),
              ),
              line(context),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        child: Text(
                          '$onTap9',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'كنز الجنة',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 30),
                      ),
                    )
                  ],
                ),
              ),
              line(context),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        child: Text(
                          '$onTap10',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'استغفار النبي يونس',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 23),
                      ),
                    )
                  ],
                ),
              ),
              line(context),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        '${onTap10 + onTap9 + onTap + onTap1 + onTap2 + onTap3 + onTap4 + onTap5 + onTap6 + onTap7 + onTap8}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        '  -: المجموع ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 23),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

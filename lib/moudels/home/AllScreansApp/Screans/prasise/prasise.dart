import 'package:flutter/material.dart';
import 'package:quran/moudels/home/AllScreansApp/Screans/prasise/ending.dart';

import '../../../../../shared/components/componenets.dart';

class prasiseScrean extends StatefulWidget {
  const prasiseScrean({super.key});

  @override
  State<prasiseScrean> createState() => _prasiseScreanState();
}

class _prasiseScreanState extends State<prasiseScrean> {
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
              'التسبيح',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$onTap1',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          onTap1++;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'آلَحًمِـدُآلَلَه',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizeBox(context),
              line(context),
              SizeBox(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$onTap2',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          onTap2++;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'سًـبّـحًآنٌ آلَلَهِ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizeBox(context),
              line(context),
              SizeBox(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$onTap3',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          onTap3++;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'لَآ إلَهِ إلَآ آلَلَه',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizeBox(context),
              line(context),
              SizeBox(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$onTap4',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          onTap4++;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'آلَلَهِ وُآكَبّـرَ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizeBox(context),
              line(context),
              SizeBox(context),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.amber,
                ),
                child: MaterialButton(
                  onPressed: () {
                    NavigatorTo(context, endScrean1());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'انتهيت من التسبيح',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

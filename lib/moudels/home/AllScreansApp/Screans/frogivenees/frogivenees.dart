import 'package:flutter/material.dart';
import 'package:quran/moudels/home/AllScreansApp/Screans/frogivenees/endFro.dart';

import '../../../../../shared/components/componenets.dart';

class frogiveneesScrean extends StatefulWidget {
  const frogiveneesScrean({super.key});

  @override
  State<frogiveneesScrean> createState() => _frogiveneesScreanState();
}

class _frogiveneesScreanState extends State<frogiveneesScrean> {
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
                    '$onTap5',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          onTap5++;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'ٱسًـتُغّفُرَ آلَلَهِ',
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
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Text(
                    '$onTap6',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      onTap6++;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      'سًـبّـحًآنٌ آلَلَهِ وُبّـحًمِـدُهِ سًـبّـحًآنٌ آلَلَهِ آلَعَظٌـيّمِ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizeBox(context),
              line(context),
              SizeBox(context),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Text(
                    '$onTap7',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        fontSize: 17),
                  ),
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      onTap7++;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      'رَبّ آغّفُرَ لَى وُتُبّ عَلَى إنٌكَ آنٌتُ آلَتُوُآبّ آلَرَحًيّمِ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.5),
                    ),
                  ),
                ),
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
                    NavigatorTo(context, end1Screan1());
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

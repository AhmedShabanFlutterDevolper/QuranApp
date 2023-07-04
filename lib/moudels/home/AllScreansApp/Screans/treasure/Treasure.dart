import 'package:flutter/material.dart';

import '../../../../../shared/components/componenets.dart';

class treasureScrean extends StatefulWidget {
  const treasureScrean({super.key});

  @override
  State<treasureScrean> createState() => _treasureScreanState();
}

class _treasureScreanState extends State<treasureScrean> {
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '$onTap9',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Colors.amber),
              ),
            ),
            SizeBox(context),
            line(context),
            SizeBox(context),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.amber,
                    Colors.amber.shade300,
                    Colors.amber.shade500,
                    Colors.amber.shade700,
                    Colors.amber.shade800,
                  ]),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [BoxShadow(spreadRadius: 3, blurRadius: 20)]),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    onTap9++;
                  });
                },
                child: Text(
                  'لا حول ولا قوة إلا بالله العلي العظيم',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

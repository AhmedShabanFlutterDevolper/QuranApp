import 'package:flutter/material.dart';
import 'package:quran/shared/components/componenets.dart';
import '../../../../../shared/components/constants.dart';
import '../../../../../shared/components/suraBuilder.dart';
import '../../../../../shared/network/local/local.dart';
import '../../../../../shared/network/local/sharedpreferences/shared_preferences.dart';

class QuranText_Screan extends StatefulWidget {
  @override
  State<QuranText_Screan> createState() => _QuranText_ScreanState();
}

class _QuranText_ScreanState extends State<QuranText_Screan> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: readJson(),
      builder: (
        BuildContext context,
        AsyncSnapshot snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text('Error');
          } else if (snapshot.hasData) {
            return indexCreator(snapshot.data, context);
          } else {
            return const Text('Empty data');
          }
        } else {
          return Text('State: ${snapshot.connectionState}');
        }
      },
    );
  }

  Scaffold indexCreator(quran, context) {
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                onPressed: () async {
                  fabIsClicked = true;
                  if (await readBookmark() == true) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SurahBuilder(
                                  arabic: quran[0],
                                  sura: bookmarkedSura - 1,
                                  suraName: arabicName[bookmarkedSura - 1]
                                      ['name'],
                                  ayah: bookmarkedAyah,
                                )));
                  }
                },
                icon: Icon(
                  Icons.bookmark,
                  size: 30,
                ),
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            for (int i = 0; i < 114; i++)
              Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.amber,
                    ),
                    child: MaterialButton(
                      child: Row(
                        children: [
                          ArabicSuraNumber(i: i),
                          const Expanded(child: SizedBox()),
                          const SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [],
                            ),
                          ),
                          Text(
                            arabicName[i]['name'],
                            style: const TextStyle(
                                fontSize: 30,
                                color: Colors.black87,
                                fontFamily: 'quran',
                                shadows: [
                                  Shadow(
                                    offset: Offset(.5, .5),
                                    blurRadius: 1.0,
                                    color: Color.fromARGB(255, 130, 130, 130),
                                  )
                                ]),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      onPressed: () {
                        fabIsClicked = false;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SurahBuilder(
                                    arabic: quran[0],
                                    sura: i,
                                    suraName: arabicName[i]['name'],
                                    ayah: 0,
                                  )),
                        );
                      },
                    ),
                  ),
                  line(context)
                ],
              ),
          ],
        ),
      ),
    );
  }
}

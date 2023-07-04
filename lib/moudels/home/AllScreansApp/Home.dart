import 'package:flutter/material.dart';
import 'package:quran/moudels/home/AllScreansApp/Screans/names/names,.dart';
import 'package:quran/moudels/home/AllScreansApp/Screans/prasise/prasise.dart';
import 'package:quran/shared/components/componenets.dart';
import '../../AppBar/menu/menu.dart';
import 'Screans/State/State.dart';
import 'Screans/Stfar/stfar.dart';
import 'Screans/SydnaMohmed/s.dart';
import 'Screans/frogivenees/frogivenees.dart';
import 'Screans/quran/QuranText.dart';
import 'Screans/treasure/Treasure.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
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
          leading: IconButton(
              onPressed: () {
                NavigatorTo(context, MyDrawer());
              },
              icon: Icon(
                Icons.menu,
              )),
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
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      NavigatorTo(context, QuranText_Screan());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/images/man.png')),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            '   القران الكريم ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizeBox(context),
                line(context),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      NavigatorTo(context, prasiseScrean());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/tasbih.png'),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'ابدأ بالتسبيح',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
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
                      NavigatorTo(context, frogiveneesScrean());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/beads.png'),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'ابدأ الاستغفار',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
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
                      NavigatorTo(context, SydnaMohame());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/muhammad.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '  الصلاة علي النبي ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
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
                      NavigatorTo(context, namesScrean());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/alahimg.jpg'),
                          ),
                          Text(
                            '  اسماء الله الحسنى ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
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
                      NavigatorTo(context, treasureScrean());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/treasure.png'),
                          ),
                          Text(
                            '  كنز الجنه  ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
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
                      NavigatorTo(context, StfarScrean());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/rosary.png'),
                          ),
                          Text('   استغفار النبي يونس  ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    fontSize: 18,
                                  )),
                        ],
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
                      NavigatorTo(context, StateScrean());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/bar-graph.png'),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            ' إحصائيّاتي',
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
        ));
  }
}

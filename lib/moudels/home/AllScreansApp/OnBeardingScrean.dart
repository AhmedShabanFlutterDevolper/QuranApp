import 'package:flutter/material.dart';
import 'package:quran/moudels/home/AllScreansApp/Home.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../shared/components/componenets.dart';

class onBeardingScrean extends StatefulWidget {
  const onBeardingScrean({super.key});

  @override
  State<onBeardingScrean> createState() => _onBeardingScreanState();
}

var boardController = PageController();

class BoardingModel {
  final String image;
  final String title;
  final String body;
  BoardingModel({
    required this.body,
    required this.title,
    required this.image,
  });
}

class _onBeardingScreanState extends State<onBeardingScrean> {
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/onboarding1.png',
      title: "'قَالَ  أَسْلَمْتُ  لِرَبِّ  الْعَالَمِينَ'",
      body: 'تطبيق القرآن يساعدك على قراءه القرآن  وتسبيح الله, والاستغفار لله',
    ),
    BoardingModel(
      image: 'assets/images/onboarding2.png',
      title: "'وَحَيْثُ مَا كُنتُمْ فَوَلُّوا وُجُوهَكُمْ شَطْرَهُ'",
      body: 'الصلاة علي النبي تساعدك علي ذياده حسناتك',
    ),
    BoardingModel(
      image: 'assets/images/onboarding3.jpg',
      title:
          "'فَسَبِّحْ بِحَمْدِ رَبِّكَ وَاسْتَغْفِرْهُ ۚإِنَّهُ كَانَ تَوَّابً'",
      body: ' استغفر ربك  ',
    ),
  ];
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  NavigatorAndFinshed(context, HomeScrean());
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.amberAccent),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  controller: boardController,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildItemOnBreading(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        spacing: 5,
                        expansionFactor: 4,
                        activeDotColor: Colors.amber),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.amber,
                    onPressed: () {
                      if (isLast) {
                        NavigatorAndFinshed(context, HomeScrean());
                      } else {
                        boardController.nextPage(
                            duration: Duration(milliseconds: 750),
                            curve: Curves.easeInOutCubic);
                      }
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

Widget buildItemOnBreading(BoardingModel modelBoarding) => Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image(image: AssetImage('${modelBoarding.image}'))),
          const SizedBox(
            height: 30,
          ),
          Text(
            '${modelBoarding.title}',
            style: TextStyle(
              fontSize: 24,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontFamily: 'QuranSurah2',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '${modelBoarding.body}',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.amberAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

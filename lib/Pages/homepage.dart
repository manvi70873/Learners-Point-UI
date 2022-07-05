import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learners_point/Catalogs/adscatalog.dart';
import 'package:learners_point/Catalogs/freectalog.dart';
import 'package:learners_point/Catalogs/premcatatlog.dart';
import 'package:learners_point/Pages/free_course_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:a_colors/a_colors.dart';

import 'free_course_page.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  PageController pagecont = PageController();
  bool ishover = false;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      backgroundColor: Color(0xFFeef1f5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: Container(
          height: 90,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(255, 190, 32, 1),
              Color.fromRGBO(251, 112, 71, 1)
            ],
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              Comp_Name(),
            ],
          ),
        ),
      ),
      // AppBar(
      //   toolbarHeight: 80,
      //     centerTitle: true,
      //     title: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Logo(),
      //         Comp_Name(),
      //       ],
      //     )),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    controller: pagecont,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemCount: catalogads.advertisements.length,
                    itemBuilder: (context, index) {
                      var item = catalogads.advertisements[index];
                      return Advertisements(item: item);
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              Dots(currentIndex: currentIndex),
              Tittle_PremCourses(),
              Divider(
                height: 10,
                thickness: 1.0,
              ),
              Premium_courses_grid(),
              Tittle_freecourses(),
              Divider(
                height: 10,
                thickness: 1.0,
              ),
              Free_Courses_List(),
              Divider(
                height: 50,
                thickness: 1.0,
              ),
            ],
          ),
        ]),
      ),
      floatingActionButton: InkWell(
        onTap: (){},
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
           gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(255, 190, 32, 1),
                Color.fromRGBO(251, 112, 71, 1)
              ],
            ),
            shape: BoxShape.circle
          ),
          child:  Icon(
            CupertinoIcons.cart_fill,
            color: Colors.white,
          ),
        ),
      )
      // FloatingActionButton(
      //   backgroundColor: Colors.deepOrange,
      //   onPressed: () {},
      //   child: Icon(
      //     CupertinoIcons.cart_fill,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}

//Widgets

class Free_Courses_List extends StatelessWidget {
  const Free_Courses_List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: catalogfree.freecourses.length,
            itemBuilder: (context, index) {
              var item = catalogfree.freecourses[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        duration: Duration(seconds: 1),
                        type: PageTransitionType.fade,
                        child: ListVideo(item: item),
                        inheritTheme: true,
                        ctx: context),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0),
                    ),
                  ),
                  child: ListTile(
                    trailing: Icon(Icons.double_arrow_sharp,color: Colors.black,),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(item.images),
                              fit: BoxFit.fill)),
                    ),
                    title: Text(item.coursename),
                    subtitle: Text(
                      'Free',
                      style: GoogleFonts.festive(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class Tittle_freecourses extends StatelessWidget {
  const Tittle_freecourses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 30),
      child: Text('Free Courses🎊🎊',
          style: GoogleFonts.grandstander(
              fontSize: 25, fontWeight: FontWeight.bold)),
    );
  }
}

class Premium_courses_grid extends StatelessWidget {
  const Premium_courses_grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0),
          itemCount: catalogprem.premiumscourses.length,
          itemBuilder: (context, index) {
            var item = catalogprem.premiumscourses[index];
            return card_prem(item: item);
          }),
    );
  }
}

class card_prem extends StatelessWidget {
  const card_prem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final premium item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Stack(
        children: [
          Container(
              color: Colors.white,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  item.coursename,
                  style: GoogleFonts.grandstander(
                      color: Colors.black, fontSize: 20),
                ),
              )),
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(item.images), fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}

class Tittle_PremCourses extends StatelessWidget {
  const Tittle_PremCourses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 30),
      child: Text('Premium Courses👑',
          style: GoogleFonts.grandstander(
              fontSize: 25, fontWeight: FontWeight.bold)),
    );
  }
}

class Advertisements extends StatelessWidget {
  const Advertisements({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ads item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Padding(
        // padding: const EdgeInsets.all(40.0),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          child: item.images,
        ),
        //),
      ],
    );
  }
}

class Dots extends StatelessWidget {
  const Dots({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          catalogads.advertisements.length,
          (index) => Container(
            height: 10,
            width: currentIndex == index ? 25 : 10,
            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class Comp_Name extends StatelessWidget {
  const Comp_Name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(' Learners Point',
        style: GoogleFonts.calligraffitti(fontSize: 30,fontWeight: FontWeight.bold));
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 27,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.black,
        radius: 25,
        child: Row(
          children: [
            Text('  L',
                style: GoogleFonts.festive(fontSize: 30, color: Colors.white)),
            Text(
              'p',
              style: GoogleFonts.festive(
                  fontFeatures: [FontFeature.superscripts()],
                  fontSize: 30,
                  color: Colors.white),
            ),
          ], //TextStyle(fontFeatures: [FontFeature.superscripts()])
        ),
      ),
    );
  }
}

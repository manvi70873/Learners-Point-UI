import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learners_point/Pages/chapterspage.dart';
import 'package:learners_point/Catalogs/freectalog.dart';
import 'package:learners_point/Catalogs/Chapters_catalog.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_box/video.controller.dart';
import 'package:video_box/video_box.dart';
import 'package:video_player/video_player.dart';
import '../Catalogs/index_desc_catalog.dart';

class ListVideo extends StatefulWidget {
  final free item;
  const ListVideo({Key? key, required this.item}) : super(key: key);

  @override
  _ListVideoState createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideo> {
  late free item;
  List<VideoController> vcs = [];

  int currentIndex = 0;
  PageController pagecont = PageController();

  double percent = 0;
  //late Timer timer;

  bool istapped = false;

  @override
  void initState() {
    // timer = Timer.periodic(Duration(milliseconds: 300), (_) {
    //   print('Percent Update');
    // });

    item = widget.item;
    super.initState();
    for (var i = 0; i < 1; i++) {
      vcs.add(VideoController(source: VideoPlayerController.network(item.video))
        ..initialize());
    }
  }

  @override
  void dispose() {
    for (var vc in vcs) {
      vc.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            colors: [Color(0xFFf77062), Color(0xFFfe5196)],
          )),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);

                  for (int i = 0; i < productliist.pl.length; i++) {
                    var item1 = productliist.pl[i];
                    item1.tapped = false;
                  }
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Tittle_Appbar(item: item),
              Liquid_widget(percent: percent),
            ],
          ),
        ),
      ),
      // AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);

      //         for(int i=0;i<productliist.pl.length;i++){
      //               var item1=productliist.pl[i];
      //               item1.tapped=false;
      //         }

      //     },
      //     icon: Icon(Icons.home_outlined),
      //   ),
      //   toolbarHeight: 90,
      //   actions: [
      //     Liquid_widget(percent: percent),
      //   ],
      //   centerTitle: true,
      //   title: tittle_Appbar(item: item),
      // ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Column(
            children: [
              for (var vc in vcs)
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: VideoBox(controller: vc),
                ),
              Slider(currentIndex: currentIndex),
              Divider(
                height: 20,
                thickness: 1.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    controller: pagecont,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: index == 0
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: ListView.builder(
                                    itemCount: productliist.pl.length,
                                    itemBuilder: ((context, index) {
                                      var item1 = productliist.pl[index];
                                      return Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: ListTile(
                                            onTap: () {
                                              setState(() {
                                                if (item1.tapped == false) {
                                                  percent = percent + 10;
                                                  print(percent);
                                                  if(percent==100){
                                                  print("Alert");
                                                  showDialog(
                                                    context: context,
                                                    builder: (ctx) =>  AlertDialog(
                                                    title: Text('Congratulations✨✨✨!!!'),
                                                    content: Text('You completd the course. Do you want to download the Certificate?'),
                                                    actions: [
                                                      FlatButton(
                                                        textColor: Colors.deepOrange,
                                                        onPressed: () {
                                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Certificate Downloaded😊😊")));
                                                          Navigator.of(context, rootNavigator: true).pop('dialog');
                                                        },
                                                        child: Text('YES'),
                                                      ),
                                                      FlatButton(
                                                        textColor: Colors.deepOrange,
                                                        onPressed: () {
                                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your Certificate is added in cart you can download it anytime from it😊😊")));
                                                          Navigator.of(context, rootNavigator: true).pop('dialog');
                                                        },
                                                        child: Text('NO'),
                                                      ),
                                                    ],
                                                  ),
                                                  );
                                             
 }

                                                  item1.tapped = true;
                                                }

                                                
                                                Navigator.push(
                                                  context,
                                                  PageTransition(
                                                      duration:
                                                          Duration(seconds: 1),
                                                      type: PageTransitionType
                                                          .fade,
                                                      child: ChapterPage(
                                                          item: item1),
                                                      inheritTheme: true,
                                                      ctx: context),
                                                );
                                              });
                                            },
                                            leading: Icon(
                                              Icons.golf_course,
                                              color: item1.tapped
                                                  ? Colors.green
                                                  : Colors.white,
                                            ),
                                            title: Center(
                                              child: Text(
                                                item1.productName,
                                                style: GoogleFonts.grandstander(
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                            trailing: Icon(
                                              Icons.pending,
                                              color: item1.tapped
                                                  ? Colors.white
                                                  : Colors.red,
                                            ),
                                          ));
                                    })),
                              )
                            : Description(),
                      );
                    }),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class Tittle_Appbar extends StatelessWidget {
  const Tittle_Appbar({
    Key? key,
    required this.item,
  }) : super(key: key);

  final free item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: RichText(
        textAlign: TextAlign.center,
        softWrap: true,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: item.coursename,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 20)),
        ]),
      ),
    );
  }
}

//Widgets

class Liquid_widget extends StatelessWidget {
  const Liquid_widget({
    Key? key,
    required this.percent,
  }) : super(key: key);

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: LiquidCircularProgressIndicator(
        value: percent / 100,
        valueColor: AlwaysStoppedAnimation(Color(0xFFf77062)),
        backgroundColor: Colors.white,
        borderColor: Color(0xFFfdd6bd),
        borderWidth: 4.0,
        direction: Axis.vertical,
        center: Text(
          percent.toString() + "%",
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            'What Will I Learn?',
            style:
                GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('♦'),
            Expanded(
              child: Text(
                  'Flutter is Google\'s UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.'),
            )
          ],
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('♦'),
            Expanded(
              child: Text(
                  'This course will get you started with Flutter and help you understand the basic concepts and architecture of Flutter'),
            )
          ],
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('♦'),
            Expanded(
              child: Text(
                  'Working with Flutter widgets, layouts,dialogs, images, and so much more'),
            )
          ],
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('♦'),
            Expanded(
              child: Text(
                  'Understanding the Flutter state management and related concepts'),
            )
          ],
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('♦'),
            Expanded(
              child: Text('Getting started with Flutter animations'),
            )
          ],
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            'Who is the target audience?',
            style:
                GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('♦'),
            Expanded(
              child: Text(
                  'Students and industry professionals who wish to add the latest app development skills in the pockets'),
            )
          ],
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('♦'),
            Expanded(
              child: Text(
                  'Students who wish to get hands-on mobile application development using Dart and Flutter'),
            )
          ],
        ),
      ],
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: MediaQuery.of(context).size.height / 14,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: index_desc_catalogs.index_desc_catalog_strings.length,
          itemBuilder: (context, index) {
            var item_catalog =
                index_desc_catalogs.index_desc_catalog_strings[index];
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFf77062),
                      Color(0xFFfe5196),
                      Color(0xFFf77062)
                    ],
                  )),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(item_catalog.string,
                          style: GoogleFonts.festive(
                              fontSize: 25, fontWeight: FontWeight.w500))),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: currentIndex == index ? Colors.black : Colors.white,
                    height: 2,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                )
              ],
            );
          }),
    );
  }
}

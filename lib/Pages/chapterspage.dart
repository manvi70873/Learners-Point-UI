import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learners_point/Catalogs/Chapters_catalog.dart';
import 'package:video_box/video.controller.dart';
import 'package:video_box/video_box.dart';

class ChapterPage extends StatefulWidget {
  final ProductsList  item;
  const ChapterPage({super.key,required this.item});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  late ProductsList item;
  List<VideoController> vcs = [];

  
  @override
  void initState() {

  
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
            colors: [
             Color(0xFFc471f5), Color(0xFFfa71cd)
            ],
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
           for (var vc in vcs)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoBox(controller: vc),
              ),

              Divider(
                height: 20,
                thickness: 1,
              ),


              Text(item.productName,style: GoogleFonts.grandstander(fontSize: 35),)
        ],
      ),
    );

  }
}
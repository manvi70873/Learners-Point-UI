import 'dart:convert';

import 'package:flutter/material.dart';

class catalogprem{
  static List<premium> premiumscourses = [
   premium (
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiydoyccFzh-9XSkCXyUn5rAvN_uV8oNS9eg&usqp=CAU",
        coursename:"Machiene Learning"
    ),
      premium (
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfW52cQKdFGhU-LCBeNVVILicnzGlDCjFl4g&usqp=CAU",
        coursename:"Data Science"
      ),

      premium(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA-qenyDAW8wz4o_2N5ObsSTaTVxyVDq3jTw&usqp=CAU",
        coursename:"Marketing"
      ),

      premium(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxukJD8PCaVsaKkk4iyRa4CLLcGbM3p_WPA&usqp=CAU",
        coursename:"UI/UX"
      ),
      premium(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhw6cw_ftCQZTt_WkOPAScSB5Xi5jZ3Z8BEA&usqp=CAU",
        coursename:"Cloud Computing"
      ),
      premium(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyKRp3yS2NShBxorq1LqVw8OEeLOzVF-g10A&usqp=CAU",
        coursename:"Cyber Security"
      ),
      premium(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQk6wEAU6AiKllrN2QqkdHojS0ITPwpJqnJA&usqp=CAU=",
        coursename:"Full Stack Development"
      ),
      premium(
        images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvQ7MQ6BUQjjnyKaBY3mJ2ZrL9m-_YDw-i6w&usqp=CAU",
        coursename:"Data Visualization"
      )
  ];
}


class premium {
  var  images;
  var coursename;

  premium({
    required this.images,
    required this.coursename,
  });
  
}

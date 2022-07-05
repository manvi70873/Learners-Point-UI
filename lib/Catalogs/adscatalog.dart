import 'dart:convert';

import 'package:flutter/material.dart';


class catalogads{
static List<ads> advertisements=[
  ads(
    images: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcrqHi-7-HW-APswxpjPYMeb5wzo6d1O-s8w&usqp=CAU",fit: BoxFit.fill,), 
    
    ),

    ads(
    images: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr4-QCyvgk8sOVo4I29ExwHyvXulgKnZ-zdg&usqp=CAU",fit: BoxFit.fill,), 
    
    ),

    ads(
    images: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReWavxPcCRDZuTc_R6--rCoJlDpPYxBQIBuw&usqp=CAU",fit: BoxFit.fill,), 
    
    ),

    ads(
    images: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdObeQN-8TqbcTqrItTz9b0Z8UnLZnJSTbVA&usqp=CAU",fit: BoxFit.fill,), 
    
    ),

    ads(
    images: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT09NmFuhdXv8VQnGCAPVH5C6IhRYrR2naMJQ&usqp=CAU",fit: BoxFit.fill,), 
    
    ),
];

}




class ads {
var images;


  ads({
    required this.images,
  });
}




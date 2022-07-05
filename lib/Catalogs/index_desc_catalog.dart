import 'dart:convert';

import 'package:flutter/material.dart';

class index_desc_catalogs{
  static List<index_desc_catalog> index_desc_catalog_strings = [
   index_desc_catalog (
        string: 'Index'
    ),
      index_desc_catalog (
        string: 'Description'
      ),

     
  ];
}


class index_desc_catalog {
  var string;

  index_desc_catalog({
    required this.string,
  });
  
}

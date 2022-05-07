import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/lottiePage.dart';

import 'home_page.dart';

void main(){
  runApp(Talabat());
}
class Talabat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talabat',
      home: lottiePage(),

    );
  }
}

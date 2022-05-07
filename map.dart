import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapp extends StatefulWidget{
  @override
  State<Mapp> createState() => _MappState();
}
class _MappState extends State<Mapp> {
  static final CameraPosition _rms = CameraPosition(
    target: LatLng(30.044420, 31.235712),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search,color: Colors.black,),
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'ابحث عن منطقة، اسم، شارع..',
          ),
        ),
      ),
      body:ListView(
        children: [Center(
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _rms,
                  //
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230.0, top: 10),
                      child: Text('عنوان التوصيل',style: TextStyle(color: Colors.grey,fontFamily:'flu1',fontSize: 17),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(width: 10,),
                          Text('عبد المطلب ربيع. حدائق المعادي',style: TextStyle(color: Colors.black,fontFamily:'flu',fontSize: 17),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('الموقع الذي قمت باختياره يبعد قليلاً عن موقعك الحالي هل أنت متأكد من أن الموقع صحيح؟',style: TextStyle(color: Colors.grey,fontFamily:'flu1',fontSize: 17),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: [
                          Text('لا. إختر موقعي الحالي',style: TextStyle(color: Colors.deepOrange,fontFamily:'flu',fontSize: 15),),
                          SizedBox(width: 30,),
                          Text('نعم. تأكيد هذا الموقع',style: TextStyle(color: Colors.deepOrange,fontFamily:'flu',fontSize: 15),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    ),
    );




  }
}

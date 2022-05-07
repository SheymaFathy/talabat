import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'map.dart';

class Food extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Text('التوصيل الى ',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 15,fontFamily: 'flu1'),),
              ),
              Row(
                children: [
                  Text(' حدائق المعادي ',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFF57C00),fontSize: 20,fontFamily: 'flu1'),),
                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mapp()));
                  }, child: const Icon(Icons.keyboard_arrow_down_outlined),),
                ],
              ),
            ],
          ),
        ),
    ),
      body: ListView(
        children: [

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 40,
                        child: Row(children: [
                          Icon(Icons.view_list_outlined,size: 30,),
                          Text('حدد بحثك', style: TextStyle(fontFamily: 'flu1'),)
                        ],),
                      ),

                      Container(
                        width: 110,
                        height: 40,
                        child: Row(children: [
                          Icon(Icons.food_bank_outlined,size: 30,),
                          Text('نوع المطبخ', style: TextStyle(fontFamily: 'flu1'),)
                        ],),
                      ),

                      Container(
                        width: 110,
                        height: 40,
                        child: Row(children: [
                          Icon(Icons.search,size: 30,),
                          Text(' بحث', style: TextStyle(fontFamily: 'flu1'),)
                        ],),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
      SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
                children: [
                  MaterialButton(onPressed: (){},
                    child: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffe5e7fe),),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Image.asset('assets/images/50.png',height: 40,),
                        ),
                        // SizedBox(height: 10,),
                        Text('نغنغة',style: TextStyle(fontFamily: 'flu1'),),
                        Text('وتوفير',style: TextStyle(fontFamily: 'flu1'),),
                      ],
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    elevation: 0,
                    onPressed: (){},
                    child: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffe5e7fe),),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Image.asset('assets/images/cop.png',height: 20,),
                        ),
                        SizedBox(height: 15,),
                        Text('استخدم',style: TextStyle(fontFamily: 'flu1'),),
                        Text('الكوبون',style: TextStyle(fontFamily: 'flu1'),),
                      ],
                      ),
                    ),
                  ),
                  RaisedButton(onPressed: (){},
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffe5e7fe),),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Image.asset('assets/images/brg.png',height: 40,),
                        ),
                        // SizedBox(height: 10,),
                        Text('أكيلة',style: TextStyle(fontFamily: 'flu1'),),
                        Text('البرجر',style: TextStyle(fontFamily: 'flu1'),),
                      ],
                      ),
                    ),
                  ),

                  RaisedButton(
                    color: Colors.transparent,
                    elevation: 0,
                    onPressed: (){},
                    child: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffe5e7fe),),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Image.asset('assets/images/pizza.png',height: 40,),
                        ),
                        // SizedBox(height: 10,),
                        Text('أكيلة',style: TextStyle(fontFamily: 'flu1'),),
                        Text('البيتزا',style: TextStyle(fontFamily: 'flu1'),),
                      ],
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffe5e7fe),),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Image.asset('assets/images/tfr.png',height: 40,),
                      ),
                      // SizedBox(height: 10,),
                      Text('عروض',style: TextStyle(fontFamily: 'flu1'),),
                      Text('التوفير',style: TextStyle(fontFamily: 'flu1'),),
                    ],
                    ),
                  ),

                ],
              ),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,left: 20,),
                    child: Text('كل المطاعم',style: TextStyle(fontFamily: 'flu', fontSize: 20),),
                  ),
                  SizedBox(width: 80,),
                  Container(
                    child: Row(children: [
                      Icon(Icons.computer,size: 30,),
                      SizedBox(width: 20,),
                      Icon(Icons.format_list_bulleted, size: 30,),
                    ],),
                  ),
                ],
              ),
            ),
              SizedBox(height: 30,),
              Container(
                child: Row(children: [
                  Image.asset('assets/images/Msr.jpg',height: 120,width: 120,),
                  Column(children: [
                    Text('مصــر الخــير',style: TextStyle(fontFamily: 'flu',fontSize: 20),),
                    Text('مؤسسة خيرية',style: TextStyle(fontFamily: 'flu1',fontSize: 17,color: Colors.grey),),

                  ],),
                ],),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(children: [
                  Image.asset('assets/images/02022.png',height: 110,width: 120,),
                  Column(children: [
                    Text('مؤسسة مجدي يعقوب',style: TextStyle(fontFamily: 'flu',fontSize: 20),),
                    Text('مؤسسة خيرية',style: TextStyle(fontFamily: 'flu1',fontSize: 17,color: Colors.grey),),

                  ],),
                ],),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(children: [
                  Image.asset('assets/images/0202.gif',height: 120,width: 120,),
                  Column(children: [
                    Text('بنك الطعام المصري',style: TextStyle(fontFamily: 'flu',fontSize: 20),),
                    Text('مؤسسة خيرية',style: TextStyle(fontFamily: 'flu1',fontSize: 17,color: Colors.grey),),

                  ],),
                ],),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(children: [
                  Image.asset('assets/images/0203.jpg',height: 120,width: 120,),
                  Column(children: [
                    Text('مؤسسة ابراهيم بدران',style: TextStyle(fontFamily: 'flu',fontSize: 20),),
                    Text('مؤسسة خيرية',style: TextStyle(fontFamily: 'flu1',fontSize: 17,color: Colors.grey),),

                  ],),
                ],),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(children: [
                  Image.asset('assets/images/Msr.jpg',height: 120,width: 120,),
                  Column(children: [
                    Text('مصــر الخــير',style: TextStyle(fontFamily: 'flu',fontSize: 20),),
                    Text('مؤسسة خيرية',style: TextStyle(fontFamily: 'flu1',fontSize: 17,color: Colors.grey),),

                  ],),
                ],),
              ),
            ],
          ),
           ],
          ),
       ),
      );
  }
}

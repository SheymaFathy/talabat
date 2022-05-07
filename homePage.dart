

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/food.dart';
import 'package:talabat/login.dart';

import 'map.dart';
import 'orders.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xffffeee5),
        elevation: 0,
        title:Column(
          children: [
            Text('التوصيل الى ',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 15,fontFamily: 'flu1'),),
            Text(' حدائق المعادي ',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFF57C00),fontSize: 20,fontFamily: 'flu1'),),
          ],
        ),
        leading: MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mapp()));
        }, child: const Icon(Icons.keyboard_arrow_down_outlined),),
      ),
     body: ListView(
       children:[ Column(
         children: [
           Container(
             color: Color(0xffffeee5),
             height: 200,
             width: double.infinity,
             padding: EdgeInsets.all(5),
             child: Row(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('أهلا بك في طلبات!',style: TextStyle(fontSize: 15,
                       fontWeight: FontWeight.bold,fontFamily:'flu'),),
                     ),
                     Text('سجل الدخول أو أنشئ حساباً جديداً',style: TextStyle(fontFamily: 'flu1'),),
                     Text('لتجربة تسوق أسرع',style: TextStyle(fontFamily: 'flu1'),),
                     Container(
                       height: 40,
                       width: 150,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.deepOrange,),
                       child: RaisedButton(color: Colors.deepOrange,
                         child: Text('تسجيل الدخول',style: TextStyle(fontFamily: 'flu1'),),
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                         },),
                     ),

                   ],
                 ),
                 Image.asset('assets/images/2233.png',width: 150,),
               ],

             ),
           ),

           Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('صباح الخيــر',style: TextStyle(
                     fontSize: 15,
                       fontWeight: FontWeight.bold,fontFamily:'flu',),),
                 ),
                 Row(
                   children: [
                     Container(
                       margin: EdgeInsets.all(5),
                       width: 160,
                       height: 175,
                       color: Colors.grey[200],
                       child: MaterialButton(
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Food()));                         },
                         child: Column(
                           children: [
                             Text('طعام',style: TextStyle(
                               fontSize: 15,
                               fontWeight: FontWeight.bold,fontFamily:'flu',),),
                             Image.asset('assets/images/ham.png'),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(width: 5,),
                     Column(

                       children: [
                       Container(
                         width: 180,
                         height: 80,
                         color: Colors.grey[200],
                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text('بقالة',style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,fontFamily:'flu',),),
                             ),
                             Image.asset('assets/images/veg.png'),
                           ],
                         ),
                       ),
                       SizedBox(height: 15,),
                       Container(
                         width: 180,
                         height: 80,
                         color: Colors.grey[200],
                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text('اكتشف',style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,fontFamily:'flu',),),
                             ),
                             Image.asset('assets/images/exp.png'),

                           ],
                         ),
                       ),
                     ],
                     ),
                   ],
                 ),
               ],
             ),
           ),

           Text('اختيارات لاتفوتك',style: TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.bold,fontFamily:'flu',),),
           SingleChildScrollView(scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               Column(
                 children: [
                   Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 90,
                     width: 90,
                     color:Color(0xffffeee5) ,
                     child: Icon(Icons.view_list_outlined,color: Colors.deepOrange,),
           ),
             ),
                   RaisedButton(child: Text('الطلبات السابقة',style: TextStyle(
                     fontSize: 12,
                     fontWeight: FontWeight.bold,fontFamily:'flu1',),),
                       color: Colors.transparent,
                       elevation: 0,
                       onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrders()));
                       }),

                 ],
               ),

               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 90,
                       width: 90,
                       color:Color(0xffffeee5) ,
                       child: Icon(Icons.heart_broken_sharp,color: Colors.deepOrange,),
                     ),
                   ),
                   RaisedButton(child: Text('عروض الفطار',style: TextStyle(
                     fontSize: 12,
                     fontWeight: FontWeight.bold,fontFamily:'flu1',),),
                       color: Colors.transparent,
                       elevation: 0,
                       onPressed: (){}),

                 ],
               ),

               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 90,
                       width: 90,
                       color:Color(0xffffeee5) ,
                       child: Icon(Icons.wb_sunny_outlined,color: Colors.deepOrange,),
                     ),
                   ),
                   RaisedButton(child: Text('وجبات السحور',style: TextStyle(
                     fontSize: 12,
                     fontWeight: FontWeight.bold,fontFamily:'flu1',),),
                       color: Colors.transparent,
                       elevation: 0,
                       onPressed: (){}),

                 ],
               ),

               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 90,
                       width: 90,
                       color:Color(0xffffeee5) ,
                       child: Icon(Icons.icecream,color: Colors.deepOrange,),
                     ),
                   ),
                   RaisedButton(child: Text('حلويات رمضان',style: TextStyle(
                     fontSize: 12,
                     fontWeight: FontWeight.bold,fontFamily:'flu1',),),
                       color: Colors.transparent,
                       elevation: 0,
                       onPressed: (){}),

                 ],
               ),


               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 90,
                       width: 90,
                       color:Color(0xffffeee5) ,
                       child: Icon(Icons.view_list_outlined,color: Colors.deepOrange,),
                     ),
                   ),
                   RaisedButton(child: Text('الطلبات السابقة',style: TextStyle(
                     fontSize: 12,
                     fontWeight: FontWeight.bold,fontFamily:'flu1',),),
                       color: Colors.transparent,
                       elevation: 0,
                       onPressed: (){}),

                 ],
               ),
             ],
    ),
           ),
         ],
       ),
       ],
     ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.search,size: 30,), label: 'بحث'),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,), label: 'حسابك',),
        ],
        currentIndex: _currentIndex,
        selectedItemColor:  Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        onTap: _changeItem,

      ),
    ),
    );


    }

  void _changeItem(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}


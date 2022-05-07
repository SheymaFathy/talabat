import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginViaEmail.dart';

class MyOrders extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
        Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Text('طلباتي السابقة', style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600,fontFamily: 'flu1'),),

        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Image.asset('assets/images/ffoo.png'),
              ),
              //SizedBox(height: 20,),
              Text('طلبات', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'flu2'),),
              Text('سجل الدخول لعرض طلباتك', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w300,fontFamily: 'flu2'),),
              SizedBox(height: 20,),
              Container(
                width: 300,
                height: 50,
                child: MaterialButton(
                  color: Colors.deepOrange,
                    child: Text('تسجيل الدخول',style: TextStyle(fontSize: 20,fontFamily: 'flu1',color: Colors.white),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginEmail()));
                    }),
              ),



            ],
          ),
        ],
      ),
    ),);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/loginViaEmail.dart';

import 'facebookLogin.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(

      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('تسجيل دخول', style: TextStyle(fontFamily: 'flu1',fontSize: 20,color: Colors.black,),),
        ),
      ),


      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
              children: [
              Image.asset('assets/images/222.png',width: 200,),
             Text('إللي بخاطرك وصلك', style: TextStyle(fontFamily: 'flu1', fontSize: 15, color: Colors.black),),
                SizedBox(height: 100,),
                Text('سجل الدخول أو انشيء حساب', style: TextStyle(fontFamily: 'flu', fontSize: 17, color: Colors.black),),
                Text('استلم الهدايا واحفظ بياناتك من أجل تجربة توصيل أسرع', style: TextStyle(fontFamily: 'flu1', fontSize: 13, color: Colors.black),),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                    child: Row(
                      children: [
                        Image.asset('assets/images/google.png',height: 40,),
                        SizedBox(width: 40,),
                        Text('إستمرار عبر جوجل',style: TextStyle(fontSize: 15,fontFamily: 'flu1',color: Colors.black),),
                      ],
                    ),
                      onPressed: (){}),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                      child: Row(
                        children: [
                          Image.asset('assets/images/facebook.png',height: 40,),
                          SizedBox(width: 40,),
                          Text('إستمرار عبر الفيسبوك',style: TextStyle(fontSize: 15,fontFamily: 'flu1',color: Colors.black),),
                        ],
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FaceBook()));
                      }),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                      child: Row(
                        children: [
                          Image.asset('assets/images/email.jpg',height: 40,width: 40,),
                          SizedBox(width: 40,),
                          Text('إستمرار عبر الإيميل',style: TextStyle(fontSize: 15,fontFamily: 'flu1',color: Colors.black),),
                        ],
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginEmail()));
                      }),
                ),
                SizedBox(height: 20,),
            ],),
          )
        ],
      ),
    ),);
  }
}

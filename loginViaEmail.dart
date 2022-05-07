import 'package:flutter/material.dart';
import 'package:talabat/forgetPass.dart';

import 'newUserEmail.dart';

class LoginEmail extends StatelessWidget{
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70,top: 30),
                child: Text('تواصل مع البريد الإليكتروني',style: TextStyle(fontFamily: 'flu',fontSize: 20,color: Colors.black),),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: ('البريد الإليكتروني'),

                  ),
                ),
              ),
      SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: ('كلمة المرور'),
          ),
        ),
      ),
              SizedBox(height: 50,),
              Container(
                width: 300,
                height: 50,

                child: RaisedButton(
                    color: Colors.deepOrange,
                    child: Text('تسجيل الدخول',style: TextStyle(fontSize: 17,fontFamily: 'flu1',color: Colors.white),),
                    onPressed: (){}),
              ),
              SizedBox(height: 20,),
              Row(children: [
                RaisedButton(
                  color: Colors.transparent,
                elevation: 0,
                child: Text('نسيت كلمة المرور؟',style: TextStyle(fontSize: 15,fontFamily: 'flu',color: Colors.deepOrange),),
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPass()));
                },
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Text('تسجيل مستخدم جديد',style: TextStyle(fontSize: 15,fontFamily: 'flu',color: Colors.deepOrange),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewEmail()));

                  },
                ),
                ],
                )

            ],
          )
        ],
      ),
    ));
  }
}

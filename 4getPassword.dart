import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: Text('نسيت كلمة المرور', style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600,fontFamily: 'flu1'),),

        ),
      ),
      body: ListView(
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration:  InputDecoration(
                  hintText: ('البريد الألكتروني'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 300,
              height: 50,
              child: MaterialButton(
                  color: Colors.deepOrange,
                  child: Text('نسيت كلمة المرور',style: TextStyle(fontSize: 20,fontFamily: 'flu1',color: Colors.white),),
                  onPressed: (){
                  }),
            ),

          ],),
        ],
      ),

    ),);
  }
}

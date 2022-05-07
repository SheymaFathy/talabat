import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('تسجيل مستخدم جديد', style: TextStyle(fontFamily: 'flu1',fontSize: 15,color: Colors.black,),),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('إستمرار عبر الإيميل',style: TextStyle(fontFamily: 'flu',fontSize: 20,color: Colors.black),),
                TextField(
                  decoration: InputDecoration(
                    hintText: ('الإسم الاول'),

                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintText: ('الإسم الأخير'),

                  ),
                ),


                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintText: ('البريد الإليكتروني'),

                  ),
                ),

                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintText: ('اختر كلمة المرور'),
                  ),
                ),
                SizedBox(height: 20,),
                Text('كلمة المرور يجب أن تتألف من 6 إلى 16 حرف', style: TextStyle(fontFamily: 'flu1', fontSize: 13, color: Colors.black),),              SizedBox(height: 50,),

                Container(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                      color: Colors.deepOrange,
                      child: Text('تسجيل الدخول',style: TextStyle(fontSize: 17,fontFamily: 'flu1',color: Colors.white),),
                      onPressed: (){}),
                ),
                SizedBox(height: 20,),
                Text("عند تسجيل الحساب يجب أن توافق على سياسة الخصوصية والشروط والأحكام", style: TextStyle(fontFamily: 'flu1', fontSize: 13, color: Colors.black),),              SizedBox(height: 50,),

              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}

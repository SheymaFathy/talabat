import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaceBook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff2d4474),
        title:
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Image.asset('assets/images/lo.png',height: 30,width: 30,),
              SizedBox(width: 20,),
              Text('تسجيل دخول بحساب فيسبوك', style: TextStyle(fontSize: 17,color: Colors.white,),),
            ],
          ),

        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Column(
                children: [
                  Image.asset('assets/images/talb.jpg', width: 100,height: 100),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Row(
                      children: [
                        Text('  Talabat',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                        Text('يطلب الوصول إلى :',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    
                  ),
                  SizedBox(height: 10,),
                  Text('اسمك وصورة ملفك الشخصي وعنوان البريد الإلكتروني'),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Row(
                      children: [
                        Icon(Icons.edit,color: Colors.blue,),
                        Text('تعديل صلاحية الوصول',style: TextStyle(color: Colors.blue),),

                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text('لا يمنح ذلك الإذن للتطبيق بالنشر على يومياتك على فيسبوك'),
                  SizedBox(height: 20,),
      Container(
        height: 40,
        width: 320,
        // color: Colors.blue,
        child: MaterialButton(
          color: Color(0xff3577e5),
            child: Text('تسجيل حساب فيسبوك',style: TextStyle(fontSize: 17,color: Colors.white),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FaceBook()));
            }),
      ),
      SizedBox(height: 10,),
                  Container(
                    height: 40,
                    width: 320,
                    // color: Colors.blue,
                    child: MaterialButton(
                        color: Colors.grey[200],
                        child: Text('إلغاء',style: TextStyle(fontSize: 17,color: Colors.black),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FaceBook()));
                        }),
                  ),
                ],
              ),
            ),

          ),
        ],
      ),
    ),
    );
  }
}

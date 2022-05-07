import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:talabat/home_page.dart';


class lottiePage extends StatefulWidget{
  @override
  State<lottiePage> createState() => _lottiePageState();
}

class _lottiePageState extends State<lottiePage> {

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
        const SizedBox(width: 20.0, height: 100.0),
        const Text(
          '',
          style: TextStyle(fontSize: 43.0),
        ),
        const SizedBox(width: 20.0, height: 100.0),
        DefaultTextStyle(
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 60.0,
            fontFamily: 'Horizon',
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Talabat '),
                // RotateAnimatedText('OPTIMISTIC'),
                // RotateAnimatedText('DIFFERENT'),
              ],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        ),
      ),
      ],
        ),
    ),
      ),
    );

  }
}

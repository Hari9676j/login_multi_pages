import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/admin_screen.dart';
import 'package:untitled/home_sreen.dart';
import 'package:untitled/login_screen.dart';
import 'package:untitled/marketing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    isLogin();
   }

void isLogin() async{
   SharedPreferences sp = await SharedPreferences.getInstance();
  bool isLogin = sp.getBool('isLogin')?? false;
  String userType = sp.getString('userType')??'';
  if(isLogin){

   if(userType == 'srihari') {
     Timer(Duration(seconds: 2), () {
       Navigator.push(context,
           MaterialPageRoute(builder: (context) => Admin()));
     });
   }else if(userType == 'srihari') {
     Timer(Duration(seconds: 2), () {
       Navigator.push(context,
           MaterialPageRoute(builder: (context) => Admin()));
     });
   }else {
     Timer(Duration(seconds: 2), () {
       Navigator.push(context,
           MaterialPageRoute(builder: (context) => marketing()));
     });

   }
   }else {
     Timer(Duration(seconds: 2), () {
  Navigator.push(context,
  MaterialPageRoute(builder: (context) => loginscreen()));
  });
  }
}
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://images.pexels.com/photos/3265460/pexels-photo-3265460.jpeg')),
    );
  }
}

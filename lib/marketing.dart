 import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class marketing extends StatefulWidget {
  const marketing({super.key});

  @override
  State<marketing> createState() => _marketingState();
}

class _marketingState extends State<marketing> {
  String email = '' ,age = '',  UserType = '' ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email')??'Harij9676@gmail.com';
    age = sp.getString('age')??'27';
    UserType = sp.getString('UserType')?? 'srihari';
    setState(() {

    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('marketing'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Home Screen'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text('Email'),
                Text(email.toString())
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text('Age'),
                Text(age.toString())
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text('User Type'),
                Text(UserType.toString())
              ],
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> loginscreen()));
              },
              child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('LOG OUT'),
                  )
              ),
            )

          ],
        ),
      ),
    );
  }
}


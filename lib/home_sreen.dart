import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  String email = '' ,age = '' ;

  @override
  void initState() {
    // TODO: implement initState
      super.initState();
      loadData();
  }
  loadData()async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email')??'';
    age = sp.getString('age')??'';
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
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

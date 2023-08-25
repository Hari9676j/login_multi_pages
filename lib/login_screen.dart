import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/admin_screen.dart';
import 'package:untitled/home_sreen.dart';


class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {


  final emailController = TextEditingController();
  final passwoedController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

         TextFormField(
           controller: emailController,
           decoration: InputDecoration(
             hintText: 'Email'


           ),
         ),
           SizedBox(height: 20,),
            TextFormField(
              controller: passwoedController,
              decoration: InputDecoration(
                  hintText: 'Password'

              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Age'

              ),
            ),
            SizedBox(height: 20,),

            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('Email', emailController.text.toString());
                sp.setString('Age', ageController.text.toString());
                //srihari, admin, Androdteam
                sp.setString('userType', 'marketing');

                sp.setBool('isLogin', true);

                if(sp.getString('User Type') == 'marketing'){
                }else if(sp.getString('User Type') == 'marketing'){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Admin()));
                }else{

                }
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Admin()));
              },
              child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('Login'),
                  )
              ),
            )
          ],
        ),
      )
    );
  }
}
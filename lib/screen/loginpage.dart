import 'package:flutter/material.dart';

import '../navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var txtID1 = TextEditingController();
  var txtID2= TextEditingController();
  void _logincheck(){
    String login = txtID1.text;
    String pass = txtID2.text;
    if( login == 'Andy' && pass == 'test'){
     Navigator.pushNamed(context, home);
    }
    else{
      print('Wrong Login Details');
    }
    login ='';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              controller: txtID1,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'UserName',
                labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                fillColor: Colors.white,
                filled: true

              ),
            ),
            SizedBox(height: 30,),
            TextField(
              // obscureText: True,

              keyboardType: TextInputType.text,
              controller: txtID2,

              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                  fillColor: Colors.white,
                  filled: true

              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: _logincheck,
                child: Text('Login'))

          ],
        ),
      ),
    );
  }
}

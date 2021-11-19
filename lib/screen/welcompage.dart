import 'package:classwork/navigation.dart';
import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome',style: TextStyle(
              color: Colors.white,
              fontSize: 60
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Image.asset('assets/images/pix.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: (){
                         Navigator.pushReplacementNamed(context, register);
                      },
                      child: Text('Register')),
                  Expanded(child: Container()),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, login);
                      },
                      child: Text('Login'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

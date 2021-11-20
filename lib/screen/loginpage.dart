import 'package:flutter/material.dart';
// import './' as color;
import '../navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: const Color(0xFFFF00FF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              controller: txtID1,
              style: const TextStyle(
                color: Color(0xFF3d1559),
                fontSize: 20,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(29)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF3d1559),width: 3),
                    borderRadius: BorderRadius.circular(29)
                ),
                hintText: 'Enter your Username',
                hintStyle: TextStyle(color: Color(0xFFFF00FF)),
                prefixIcon: const Icon(Icons.person,color: Color(0xFFFF00FF),),
                fillColor: Colors.white,
                filled: true

              ),
            ),
            const SizedBox(height: 30,),
            TextField(
              keyboardType: TextInputType.text,
              controller: txtID2,
              style: const TextStyle(
                color: Color(0xFF3d1559),
                fontSize: 20,
              ),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF3d1559),width: 3),
                      borderRadius: BorderRadius.circular(29)
                  ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29)
                    ),
                prefixIcon: const Icon(Icons.lock,color: Color(0xFFFF00FF),),
                suffixIcon: IconButton(
                    onPressed: ()=>setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    }),
                    icon: isPasswordVisible
                        ? Icon(Icons.visibility_off, color: Color(0xFFFF00FF))
                        : Icon(Icons.visibility, color: Color(0xFFFF00FF))),

                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Color(0xFFFF00FF)),
                  fillColor: Colors.white,
                  filled: true

              ),
              obscureText: isPasswordVisible,
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF3d1559),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                fixedSize: Size(
                    MediaQuery.of(context).size.width, 50),
              ),
                onPressed: _logincheck,
                child: Text('Login',style: TextStyle(fontSize: 20),))

          ],
        ),
      ),
    );
  }
}

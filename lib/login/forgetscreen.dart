import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/login/login_screen.dart';
import 'package:login/login/otp_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('FarmerEats'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forgot Password ?', style: TextStyle(fontSize: 30)),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Remember Your Password?',
                    style: TextStyle(color: Colors.grey)),
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen(),));
                }, child: Text('Login in',style: TextStyle(color: Colors.deepOrange),))
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 100,
                width: 380,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:EdgeInsets.all(10),
              child: SizedBox(
                width: 380,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => OtpScreen(),));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade800,
                    ),
                    child: Text(
                      'Send Code',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

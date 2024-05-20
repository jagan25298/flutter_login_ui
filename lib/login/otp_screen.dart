import 'package:flutter/material.dart';
import 'package:login/login/restscreen.dart';
import 'package:pinput/pinput.dart';
import 'login_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('FarmerEats'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Forgot Password ?', style: TextStyle(fontSize: 30)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('Remember Your Password?',
                  style: TextStyle(color: Colors.grey)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  },
                  child: TextButton(
                    onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen(),));},
                    child: Text(
                      'Login in',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Pinput(
              length: 6,
            ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepOrange,
              ),
                onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => ResetPassword(),));
                }, child: Text('Submit')),
          ),
        ],),
      ),
    );
  }
}

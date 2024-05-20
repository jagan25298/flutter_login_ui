import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/login/login_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('FarmerEats'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reset Password ?', style: TextStyle(fontSize: 30)),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Remember Your Password?',
                      style: TextStyle(color: Colors.grey)),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
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
                      hintText: 'New Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                  ),
                ),
              ),
              //SizedBox(height:5 ,),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  height: 100,
                  width: 380,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 10,),
              Padding(
                padding:EdgeInsets.all(10),
                child: SizedBox(
                  width: 380,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade800,
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

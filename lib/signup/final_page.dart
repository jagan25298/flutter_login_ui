import 'package:flutter/material.dart';
import 'package:login/login/login_screen.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({super.key});

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              child: Image.asset(
                'images/green.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'You re all done!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Hang tight ! We are Currently reviewing your accountant  and  Will follow up with you in 2-3 business days . in the  meantime you can setup your inventory',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 200),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                child: Text('Sumbit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

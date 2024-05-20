import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login/signup/business_hours.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'FarmerEats',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Signup 3 of 4 ',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Verification',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Attached Proof of Department of Agriculture\n registrations i.e. Florida fresh, USDA Approved,\n USDA Organic.',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Attach proof of registration',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: CircleAvatar(

                    backgroundColor: Colors.redAccent,
                    child: IconButton(
                      onPressed: () {
                        _imageFile == null
                            ? Text('No image selected')
                            : Image.file(_imageFile!);
                        print('Image file pick from camera button clicked');
                        _imageFrom(ImageSource.camera);
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 310,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 100,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepOrange,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BusinessHoursPage(),));
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _imageFrom(ImageSource source) async {
    try {
      final pickedFile = await _picker.pickImage(source: source);
      setState(() {
        if (pickedFile != null) {
          _imageFile = File(pickedFile.path);
        } else {
          print('No image clicked');
        }
      });
    } catch (e) {
      print('Error picking image: $e');
    }
  }
}

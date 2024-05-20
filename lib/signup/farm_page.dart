import 'package:flutter/material.dart';
import 'package:login/signup/sigup_homepage.dart';
import 'package:login/signup/verify_page.dart';

class FarmPage extends StatefulWidget {
  const FarmPage({super.key});

  @override
  State<FarmPage> createState() => _FarmPageState();
}

class _FarmPageState extends State<FarmPage> {
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _infoNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _zipcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String? _selectedDropdownValue;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("FarmerEats"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height / 1,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Signup 2 of 4"),
                SizedBox(
                  height: height / 30,
                ),
                Text(
                  "Farm Info",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: height / 14,
                    width: width * 0.9,
                    child: TextFormField(
                      controller: _businessNameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        prefixIcon: Icon(Icons.label_important_outline_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Bussiness Name',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: height / 14,
                    width: width * 0.9,
                    child: TextFormField(
                      controller: _infoNameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        prefixIcon: Icon(Icons.tag_faces_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Information Name',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: height / 14,
                    width: width * 0.9,
                    child: TextFormField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        prefixIcon: Icon(Icons.home_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Street Address',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: height / 14,
                    width: width * 0.9,
                    child: TextFormField(
                      controller: _cityController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        prefixIcon: Icon(Icons.location_on_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'City',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: height / 13,
                        width: width * 0.35,
                        child: DropdownButtonFormField<String>(

                          value: _selectedDropdownValue,
                          items: <String>['TamilNadu', 'Kerela', "Delhi","Mumbai",]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedDropdownValue = newValue;
                            });
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'States',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: height / 14,
                        width: width * 0.5,
                        child: TextFormField(
                          controller: _zipcodeController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Enter Zipcode',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height/7,
                ),
                Row(
                  children: [
                    IconButton(onPressed:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HomePage()));
                    }, icon:Icon(Icons.arrow_back)),
                    SizedBox(
                      width: width*0.50,
                    ),
                    Container(
                      height: 40,
                      width: 125,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VerificationScreen(),));
                          },
                          child: Text("Continue",style: TextStyle(color: Colors.white),)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

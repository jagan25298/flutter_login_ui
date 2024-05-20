import 'package:flutter/material.dart';

import 'final_page.dart';

class BusinessHoursPage extends StatefulWidget {
  const BusinessHoursPage({Key? key}) : super(key: key);

  @override
  State<BusinessHoursPage> createState() => _BusinessHoursPageState();
}

class _BusinessHoursPageState extends State<BusinessHoursPage> {
  // Define variables to track the color of each InkWell
  Map<String, Color> _inkWellColors = {
    'S': Colors.grey.shade100,
    'M': Colors.grey.shade100,
    'T': Colors.grey.shade100,
    'W': Colors.grey.shade100,
    'Th': Colors.grey.shade100,
    'F': Colors.grey.shade100,
    'Sa': Colors.grey.shade100,
    '8:00 am - 10:00 am': Colors.grey.shade300,
    '10:00 am - 1.00 pm': Colors.grey.shade100,
    '1:00 pm - 4:00 pm': Colors.grey.shade100,
    '04:00 pm - 7.00 pm': Colors.grey.shade100,
  };

  // Method to handle color change
  void _changeColor(String day) {
    setState(() {
      _inkWellColors[day] = _inkWellColors[day] == Colors.grey.shade300
          ? Colors.deepOrangeAccent.shade100
          : Colors.grey.shade300;
    });
  }

  void _changeColors(String timing) {
    setState(() {
      _inkWellColors[timing] = _inkWellColors[timing] == Colors.grey.shade100
          ? Colors.deepOrangeAccent.shade100
          : Colors.grey.shade100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FarmerEats'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Signup 4 of 4',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'Business Hours',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
              'Choose the hours your farm is open for pickups.',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'This will allow customers to order deliveries.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                for (var day in ['S', 'M', 'T', 'W', 'Th', 'F', 'Sa'])
                  InkWell(
                    onTap: () => _changeColor(day),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: _inkWellColors[day],
                              borderRadius: BorderRadius.circular(5)),
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text(
                              day,
                              style: TextStyle(fontSize: 23),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                for (var timing in ['8:00 am - 10:00 am', '10:00 am - 1.00 pm'])
                  InkWell(
                    onTap: () => _changeColors(timing),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: _inkWellColors[timing],
                              borderRadius: BorderRadius.circular(20)),
                          width: 150,
                          height: 70,
                          child: Center(
                            child: Text(
                              timing,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                for (var timing in ['1:00 pm - 4:00 pm', '04:00 pm - 7.00 pm'])
                  InkWell(
                    onTap: () => _changeColors(timing),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: _inkWellColors[timing],
                              borderRadius: BorderRadius.circular(20)),
                          width: 150,
                          height: 70,
                          child: Center(
                            child: Text(
                              timing,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
              ],
            ),SizedBox(height: 160,),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                SizedBox(width: 100,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SaveScreen(),));
                      },
                      child: Text('Signup')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

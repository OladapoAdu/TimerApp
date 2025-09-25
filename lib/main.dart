import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // run the app lol
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // I don't want the debug text
      home: TimerHomePage(), // go to my page
    );
  }
}

class TimerHomePage extends StatefulWidget {
  @override
  State<TimerHomePage> createState() => TimerHomePageState();
}

class TimerHomePageState extends State<TimerHomePage> {
  String a = "Work"; 
  String b = "29:31"; // fake text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800], // grey background
        title: Text(
          "My Work Timer",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: a == "Work" ? Colors.green : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // no rounded corners
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      a = "Work";
                    });
                  },
                  child: Text("Work"),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: a == "Short" ? Colors.green : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      a = "Short";
                    });
                  },
                  child: Text("Short Break"),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: a == "Long" ? Colors.green : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      a = "Long";
                    });
                  },
                  child: Text("Long Break"),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          
          Container(
            height: 500,
            width: 500,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: CircularProgressIndicator(
                    value: 1, 
                    strokeWidth: 20,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                Text(
                  b,
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),


          SizedBox(height: 10),

          
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Stop", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Restart", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

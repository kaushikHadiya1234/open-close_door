import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Door(),
    ),
  );
}

class Door extends StatefulWidget {
  const Door({Key? key}) : super(key: key);

  @override
  State<Door> createState() => _DoorState();
}

class _DoorState extends State<Door> {
  double i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("open-close door",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if(i<150)
                {
                  i+=30;
                }
            });
          },
          onDoubleTap: () {
            setState(() {
              if(i>0)
              {
                i-=30;
              }
            });
          },
          child: Container(
            height: 550,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(vertical: BorderSide(
                color: Colors.grey,width:i
              ),horizontal: BorderSide(
                  color: Colors.black,width:50
              ),)
            ),
          ),
        ),
      ),
      backgroundColor: Colors.red[100],
    );
  }
}

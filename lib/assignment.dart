import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Greeting App',style: TextStyle(color: Colors.white,fontSize: 25),),
      backgroundColor: Colors.green,
      shadowColor: Colors.black,
      elevation: 2,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            ClipOval(
              child: Image.asset('assets/images/anya_pointing.png', scale: 2.5),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 70,
              width: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Center(
                        child: Text(
                          'Button Pressed',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 2),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  );
                },
                child: Text('Tap Here', style: TextStyle(fontSize: 22)),
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

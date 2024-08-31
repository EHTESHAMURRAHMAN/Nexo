import 'package:flutter/material.dart';

class home2 extends StatelessWidget {
  const home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: const Center(
          child: Column(
            children: [
              Text('Tip For Button', style: TextStyle(fontSize: 22)),
              SizedBox(height: 20),
              Text('Tip For Button', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Tip For Button', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Tip For Button', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Tip For Button', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Tip For Button', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}

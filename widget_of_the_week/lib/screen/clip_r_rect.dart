import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('ClipRRect')),
      body: Column(
        children: <Widget>[
          Text('Before',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Image(image: AssetImage('assets/images/dtla.jpg')),
          SizedBox(height: 30),
          Text('ClipRRect',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child: Image(image: AssetImage('assets/images/dtla.jpg'),)),
          ClipOval(
              child: Image(image: AssetImage('assets/images/dtla.jpg'),)
          ),

        ],
      ),
    );
  }
}


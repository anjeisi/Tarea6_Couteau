//Anjesi Ivelisse 2021-1815
import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contactame')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2, style: BorderStyle.solid)),
              child: Image.asset('me.jpg'),
            ),
            SizedBox(height: 16.0),
            Text('Anjeisi Ivelisse Acosta Carvajal', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Text('Correo: anjeisiacostacarvajal@gmail.com', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Text('Numero: 829-915-2339', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Text('GitHub: Anjeisi', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black, fontWeight: FontWeight.bold)),
          ],) 
        ),
    );
  }
}

import 'package:flutter/material.dart';

class RestoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rm. Sedap Rasa'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.email, size: 30),
                Icon(Icons.map, size: 30),
                Icon(Icons.phone, size: 30),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Deskripsi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Restoran ini menyediakan makanan khas Indonesia dengan cita rasa yang autentik.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'List Menu:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...['Nasi Goreng', 'Soto Ayam', 'Gado-Gado'].map((menu) => ListTile(
                  leading: Icon(Icons.fastfood),
                  title: Text(menu),
                )),
            SizedBox(height: 16),
            Text(
              'Alamat:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Jl. Makan Enak No. 15, Jakarta',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Jam Buka:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Senin - Minggu: 10:00 - 22:00',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

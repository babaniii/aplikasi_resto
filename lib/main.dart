import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantProfile(),
    );
  }
}

class RestaurantProfile extends StatelessWidget {
  const RestaurantProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rm. Sedap Rasa"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Profil
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: Text(
                  "Gambar Profil",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 16.0),

            // Ikon Email, Map, Telepon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.email),
                  tooltip: "Email",
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone),
                  tooltip: "Telepon",
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.map),
                  tooltip: "Map",
                )
              ],
            ),
            const SizedBox(height: 16.0),

            // Deskripsi
            const Text(
              "Deskripsi:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Restoran ini menyajikan makanan terbaik dengan cita rasa khas.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),

            // List Menu
            const Text(
              "List Menu:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• Nasi Goreng"),
                Text("• Mie Ayam"),
                Text("• Sate Ayam"),
              ],
            ),
            const SizedBox(height: 16.0),

            // Alamat
            const Text(
              "Alamat:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Jl. Kuliner No. 123, Kota Rasa",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),

            // Jam Buka
            const Text(
              "Jam Buka:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Senin - Jumat: 08:00 - 21:00"),
                Text("Sabtu - Minggu: 10:00 - 23:00"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

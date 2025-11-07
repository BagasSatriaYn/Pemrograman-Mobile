import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        actions: [
          IconButton(
            icon: const Icon(Icons.photo_library),
            onPressed: () {
              Navigator.pushNamed(context, '/gallery');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/pasfotosat.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Nama: Bagas Satria YN", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("NIM: 2341760108"),
                    Text("Jurusan: Teknologi Informasi"),
                    Text("Program Studi: D-IV Sistem Informasi Bisnis"),
                   
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Daftar Mata Kuliah Semester 5", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(leading: Icon(Icons.book), title: Text("Pemrograman Mobile")),
                  ListTile(leading: Icon(Icons.book), title: Text("Pemrograman Web Lanjut")),
                  ListTile(leading: Icon(Icons.book), title: Text("Kecerdasan Buatan")),
                  ListTile(leading: Icon(Icons.book), title: Text("Manajemen Proyek TI")),
                  ListTile(leading: Icon(Icons.book), title: Text("Interaksi Manusia & Komputer")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

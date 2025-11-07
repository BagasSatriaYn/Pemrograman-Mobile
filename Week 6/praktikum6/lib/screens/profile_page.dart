import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data Mahasiswa Statis
    const String nama = 'Bagas Satria Yudho Nugraha';
    const String nim = '2341760108';
    const String jurusan = 'Teknologi Informasi';
    const String prodi = 'D-IV Sistem Informasi Bisnis';
    const String kelas = 'SIB-3B';
    
    // Asumsi font "CustomFont" sudah didefinisikan di pubspec.yaml
    const String customFont = 'CustomFont';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Profil Mahasiswa'),
        // Jika dari BottomNav, panah kembali tidak perlu muncul
        automaticallyImplyLeading: true, 
        // Actions: FlutterLogo di pojok kanan atas
        actions: const [
          FlutterLogo(
            size: 28.0, 
            style: FlutterLogoStyle.markOnly,
          ),
          SizedBox(width: 16),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          // Gunakan Padding di sekitar seluruh konten
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- FOTO PROFIL & PLACEHOLDER ---
              Center(
                child: Column(
                  children: [
                    // CircleAvatar sebagai Image, menggunakan Placeholder
                    const CircleAvatar(
                      radius: 70,
                      // Placeholder jika gambar belum tersedia/tidak dimuat
                      // child: Placeholder(fallbackHeight: 140, fallbackWidth: 140), 
                       backgroundImage: AssetImage('assets/images/pasfoto(1)(1).png'),
                    ),
                    const SizedBox(height: 10),
                    
                    // Teks Nama dengan Custom Font
                    Text( 
                      nama,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: customFont, 
                      ),
                    ),
                    Text(nim, style: const TextStyle(fontSize: 16, color: Colors.grey)),
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              const Divider(),

              // --- BAGIAN DETAIL INFORMASI (Menggunakan Container untuk Styling) ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0), // Padding di dalam Container
                margin: const EdgeInsets.symmetric(vertical: 10.0), // Margin luar Container
                decoration: BoxDecoration(
                  color: Colors.blue.shade50, // Background color (Styling)
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Profile Information', 
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),

                    // DETAIL: Nama
                    _buildProfileRow('Nama', nama, customFont: true),
                    const SizedBox(height: 10),

                    // DETAIL: NIM
                    _buildProfileRow('NIM', nim),
                    const SizedBox(height: 10),

                    // DETAIL: Kelas
                    _buildProfileRow('Kelas', kelas),
                    const SizedBox(height: 10),

                    // DETAIL: Jurusan
                    _buildProfileRow('Jurusan', jurusan),
                    const SizedBox(height: 10),
                    
                    // DETAIL: Prodi
                    _buildProfileRow('Prodi', prodi),
                  ],
                ),
              ), // End Container

              const SizedBox(height: 10),
              const Divider(),
              
              // --- ICON & TEXT (More Information) ---
              const SizedBox(height: 10),
              const Text('Contact Information', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),

              // ICON E-mail
              Row(
                children: [
                    const Icon(Icons.email, size: 20),
                    const SizedBox(width: 8),
                    const Text('bagassatriayudhonugraha@polinema.ac.id'),
                ],
              ),
              const SizedBox(height: 10),

              // ICON Telepon
              Row(
                children: [
                    const Icon(Icons.phone, size: 20),
                    const SizedBox(width: 8),
                    const Text('+62 813 4276 7403'),
                ],
              ),
              
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
  
  // Widget Pembantu untuk membuat baris detail profil yang rapi
  Widget _buildProfileRow(String label, String value, {bool customFont = false}) {
    return Row(
      children: [
        // Label (diseragamkan lebarnya)
        SizedBox(
          width: 80, 
          child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        const Text(': '),
        // Value (menggunakan Expanded agar data tidak terpotong)
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontFamily: customFont ? 'CustomFont' : null,
            ),
          ),
        ),
      ],
    );
  }
}
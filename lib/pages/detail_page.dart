import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 16),
            const Text(
              'Kos Contoh',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Alamat Kos'),
            const SizedBox(height: 8),
            const Text('Rp0 per bulan'),
            const SizedBox(height: 8),
            const Text('Jumlah kamar: 5'),
            const SizedBox(height: 4),
            const Text('Kamar tersedia: 3'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add');
                  },
                  child: const Text('Edit'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    // Aksi hapus
                  },
                  child: const Text('Hapus'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

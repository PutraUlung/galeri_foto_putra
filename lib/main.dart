import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetDemo(),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
      ),
      body: Column(
        children: [
          MiddleImage(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Jalan Barcelona',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                Text('Lokasi: Barcelona, Spanyol'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.date_range,
                  color: Colors.blue,
                ),
                Text('Pulikasi: 13 Agustus 2013'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left, // Rata kiri
                ),
                Text(
                  'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.left, // Rata kiri
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MiddleImage extends StatelessWidget {
  const MiddleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://picsum.photos/id/88/300/200',
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}

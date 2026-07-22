import 'package:flutter/material.dart';

void main() {
  runApp(const MyCatalogApp());
}

class MyCatalogApp extends StatelessWidget {
  const MyCatalogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatalogScreen(),
    );
  }
}

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int columns = (screenWidth > 600) ? 4 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Food Catalog'),
        backgroundColor: Colors.orange,
      ),
      body: GridView.count(
        crossAxisCount: columns,
        childAspectRatio: 0.8,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          buildCard('assets/pic1.png', 'อาหารเม็ดสุนัขพันธุ์เล็ก', '350 ฿', 'โปรตีนสูง'),
          buildCard('assets/pic2.png', 'อาหารสุนัขสำหรับแม่และลูกสุนัข', '450 ฿', 'รสนม 400 ก.'),
          buildCard('assets/pic3.png', 'ขนมขัดฟัน', '142 ฿', 'ลดหินปูน'),
          buildCard('assets/pic4.png', 'อาหารสุนัขโต', '350 ฿', 'ย่อยง่าย'),
          buildCard('assets/pic5.png', 'ขนมสุนัข', '89 ฿', 'รสแกะ'),
          buildCard('assets/pic6.png', 'อาหารเม็ดสุนัข High Protein', '400 ฿', 'โปรตีนสูง'),
          buildCard('assets/pic7.png', 'อาหารเปียกสุนัข', '35 ฿', 'ทานง่าย'),
          buildCard('assets/pic8.png', 'นมแพะ', '65 ฿', 'แคลเซียมสูง'),
        ],
      ),
    );
  }
  Widget buildCard(String imagePath, String name, String price, String desc) {
    return Card(
      color: Colors.orange[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(price, style: const TextStyle(color: Colors.red)),
          Text(desc, style: const TextStyle(fontSize: 12)),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
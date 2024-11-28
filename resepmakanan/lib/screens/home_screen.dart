import 'package:flutter/material.dart';
import 'package:resepmakanan/data/makanan_data.dart';
import 'package:resepmakanan/models/makanan.dart';
import 'package:resepmakanan/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resep Makanan'),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        padding: EdgeInsets.all(8),
        itemCount: makananList.length,
        itemBuilder: (_,index){
          Makanan makanan = makananList[index];
          return ItemCard(makanan:makanan);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practica3_5a24/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imágenes',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
      ),
    );
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const Image(
                  image: AssetImage('assets/img/hoja.jpg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('1 hoja muriendo'),
          ),
        ],
      ),
    );
  }

  Widget imageWeb(){
    return Center(
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVl5oG3pomoksvq_k6DDB9tOBRcyU_jEc5YA&usqp=CAU'
      ),
    );
  }
}
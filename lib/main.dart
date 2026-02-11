import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const LosProductos(),
    );
  }
}

class LosProductos extends StatelessWidget {
  const LosProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Caffenio la Montoya'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        leading: const Icon(Icons.coffee),
        actions: [
          IconButton(
            icon: const Icon(Icons.build),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.emergency),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjeta(
            titulo: "Espresso Intenso",
            subtitulo: "Energía pura",
            urlImagen: "https://raw.githubusercontent.com/montoya06470/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/cafe1.png",
          ),
          _crearTarjeta(
            titulo: "Cappuccino",
            subtitulo: "Cremoso y suave",
            urlImagen: "https://raw.githubusercontent.com/montoya06470/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/cafe2.png",
          ),
          _crearTarjeta(
            titulo: "Latte Art",
            subtitulo: "Diseño en tu taza",
            urlImagen: "https://raw.githubusercontent.com/montoya06470/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/cafe3.png",
          ),
          _crearTarjeta(
            titulo: "Moka Frío",
            subtitulo: "El toque de chocolate",
            urlImagen: "https://raw.githubusercontent.com/montoya06470/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/cafe4.png",
          ),
        ],
      ),
    );
  }

  Widget _crearTarjeta({required String titulo, required String subtitulo, required String urlImagen}) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      margin: const EdgeInsets.only(bottom: 20.0),
      color: const Color(0xFF6F4E37), // Lighter coffee color for card background
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.brown.shade800,
          child: ClipOval(
            child: Image.network(
              urlImagen,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.coffee,
                  color: Colors.white,
                  size: 30,
                );
              },
            ),
          ),
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.thumb_up,
          color: Color(0xFFFFF59D), // Amarillo claro
        ),
      ),
    );
  }
}

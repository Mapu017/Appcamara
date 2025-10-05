import 'package:flutter/material.dart';
// 👇 importa tu archivo de la cámara
import 'presentation/camera_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el letrero "DEBUG"
      title: 'Proyecto Cámara',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // opcional, mejora el diseño con Material 3
      ),
      // 👇 Aquí indicamos que la pantalla principal será tu CameraPage
      home: const CameraPage(),
    );
  }
}

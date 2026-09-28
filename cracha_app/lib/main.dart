
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Cracha Digital',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const TelaCracha(),
    );
  }
}

class TelaCracha extends StatelessWidget {
  const TelaCracha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Identificacao Estudantil'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 350,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.indigo.shade50,
                  Colors.blue.shade100,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.indigo,
                width: 2.0,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Foto do estudante
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=12',
                  ),
                ),

                const SizedBox(height: 12.0),

                // Nome
                const Text(
                  'Ana Silva Santos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                // Curso
                const Text(
                  'Desenvolvimento Mobile / PPDM',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const Divider(
                  height: 24,
                  thickness: 1,
                ),

                // RA
                const Row(
                  children: [
                    Icon(
                      Icons.badge,
                      color: Colors.indigo,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'RA: 2026109923',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                const SizedBox(height: 8.0),

                // E-mail
                const Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.indigo,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'ana.silva@estudante.edu.br',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),

                const Divider(
                  height: 24,
                  thickness: 1,
                ),

                // Sobre Mim
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sobre Mim',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Sou estudante de Desenvolvimento de Sistemas e tenho '
                  'interesse em programação mobile. Gosto de aprender '
                  'novas tecnologias e desenvolver aplicativos utilizando '
                  'Flutter e Dart.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 16),

                // Habilidades
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Habilidades',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // Chips de habilidades
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Chip(
                      avatar: Icon(
                        Icons.code,
                        size: 18,
                        color: Colors.indigo,
                      ),
                      label: Text('Dart'),
                    ),
                    SizedBox(width: 6),
                    Chip(
                      avatar: Icon(
                        Icons.phone_android,
                        size: 18,
                        color: Colors.indigo,
                      ),
                      label: Text('Flutter'),
                    ),
                    SizedBox(width: 6),
                    Chip(
                      avatar: Icon(
                        Icons.storage,
                        size: 18,
                        color: Colors.indigo,
                      ),
                      label: Text('SQL'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


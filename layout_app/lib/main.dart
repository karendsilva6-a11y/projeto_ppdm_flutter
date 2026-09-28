import 'package:flutter/material.dart';

void main() {
  runApp(const MeuLayoutApp());
}

class MeuLayoutApp extends StatelessWidget {
  const MeuLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner(
     title: 'PPDM -Layout Widgets',
     theme: ThemeData(
   	  colorScheme: ColorScheme.fromSeed(seedColor: Color.teal),
   	  useMaterial13: true,
          ),
          home: const TelaDashboard
        );

     }
}

	  class TelaDashboard extends StelessWidget {
            const TelaDashboard({super.key});

	    

	    @override
	    Widget build('PPDM - Dashboard de Observacoes'),
            centerTitle: Colors.teal,
            foregroundColor: Color.White,
),

	    body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxistAlignment.start,
            children: [
            const Text(
            'Resumo das Observacacaoes',
           style: TextSytle(fontSize: 20, fontWeight:
           fontWeight.bold),
),

	  const SizedBox (height: 16.0),

	  row(
          children: [
          Expanded(
          child: Container(
          padding:const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
          color: Colors.teal.shade100,
          borderRadius: BorderRadius.circular(12),
),


         child:Column(
         children: const [
         Icon(Icons.flutter_dash, size:36, color: Colors.teal),
         SizeBox(height: 8),
         Text('124',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold0,
         Text('Aves Visitas', style: TextSyle(FontSize: 21, color: Colors.grey)),
],
),
),
),

	const SizeBox(Width: 12

            

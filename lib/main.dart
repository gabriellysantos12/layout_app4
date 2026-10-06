import 'package:flutter/material.dart';
import 'widgets/bloco_estatistica.dart';

void main() {
  runApp(const MeuLayoutApp());
}

class MeuLayoutApp extends StatelessWidget {
  const MeuLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Layout Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TelaDashboard(),
    );
  }
}

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Dashboard de Observacoes'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          // ===== DESAFIO 2 =====
          // Alterado o alinhamento para o centro
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const Text(
              'Resumo das Observacoes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
 
            // ===== DESAFIO 1 =====
            // Adicionado terceiro Card de Fotos

            // ===== DESAFIO 7 =====
            // Criado widget BlocoEstatistica para reutilizar os cards

            // ===== DESAFIO 8 =====
            // Alterado para GridView com 4 cards em 2x2
            SizedBox(
              height: 300,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                children: [
                  BlocoEstatistica(
                    icone: Icons.flutter_dash,
                    numero: '124',
                    descricao: 'Aves Vistas',
                    cor: Colors.teal.shade100,
                  ),
                  BlocoEstatistica(
                    icone: Icons.place,
                    numero: '18',
                    descricao: 'Locais Visitados',
                    cor: Colors.teal.shade50,
                  ),
                  BlocoEstatistica(
                    icone: Icons.camera_alt,
                    numero: '45',
                    descricao: 'Fotos',
                    cor: Colors.teal.shade100,
                  ),
                  BlocoEstatistica(
                    icone: Icons.star,
                    numero: '12',
                    descricao: 'Destaques',
                    cor: Colors.teal.shade50,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24.0),

            const Text(
              'Destaque da Semana',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),

            // SOBREPOSICAO usando Stack (Selo de Notificacao sobre o Card)
            Stack(
              clipBehavior: Clip.none,
              children: [
                // ===== DESAFIO 6 =====
                // Substituido Container por Card com elevacao
                Card(
                  elevation: 4,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, size: 48, color: Colors.amber),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Gaviao-Real',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Avistado no Parque Central',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -8,
                  right: -8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Raro',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // ===== DESAFIO 5 =====
                // Adicionado selo Confirmado no canto inferior esquerdo
                Positioned(
                  bottom: -8,
                  left: -8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Confirmado',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // ===== DESAFIO 3 =====
            // Adicionada a seção Ultimos Registros
            const SizedBox(height: 24.0),

            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.list,
                    color: Colors.teal,
                  ),
                  const Text(
                    'Ultimos Registros',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Ver'),
                  ),
                ],
              ),
            ),

            // ===== DESAFIO 4 =====
            // Removido Expanded e adicionado texto longo para provocar overflow
            const SizedBox(height: 24.0),

            Row(
              children: [
                const Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
                const Text(
                  'Este e um texto extremamente longo utilizado propositalmente para provocar um overflow horizontal na Row e mostrar as faixas amarelas e pretas do Flutter.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

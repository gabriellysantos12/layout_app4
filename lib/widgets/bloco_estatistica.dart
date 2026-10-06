import 'package:flutter/material.dart';

class BlocoEstatistica extends StatelessWidget {
  final IconData icone;
  final String numero;
  final String descricao;
  final Color cor;

  const BlocoEstatistica({
    super.key,
    required this.icone,
    required this.numero,
    required this.descricao,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(
            icone,
            size: 36,
            color: Colors.teal,
          ),
          const SizedBox(height: 8),
          Text(
            numero,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            descricao,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

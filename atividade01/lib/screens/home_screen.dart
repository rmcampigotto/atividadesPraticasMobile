import 'package:flutter/material.dart';
import '../widget/card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            CardItem(title: 'Conta Corrente', description: 'Descrição do item 1', saldo: 174.00,),
            CardItem(title: 'Conta Poupança', description: 'Descrição do item 2', saldo: 46384.00,),
            CardItem(title: 'MEI', description: 'Descrição do item 3', saldo: 786449.00,),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/item_list.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _itemController = TextEditingController();
  final List<String> _items = [];

  void _addItem() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _items.add(_itemController.text);
        _itemController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Itens'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _itemController,
                      decoration: const InputDecoration(labelText: 'Novo Item'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, insira um item';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _addItem,
                    child: const Text('Adicionar'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ItemList(items: _items),
            ),
          ],
        ),
      ),
    );
  }
}

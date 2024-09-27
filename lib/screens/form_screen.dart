import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.network(
                'https://static.gazetaesportiva.com/uploads/imagem/2021/12/01/000_9TJ2CG.jpg',
                width: 250,
                height: 250,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Campo 1'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha este campo, Por Favor';
                  }
                  return null;
                },
              ),
               TextFormField(
                decoration: InputDecoration(labelText: 'Campo 2'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha este campo, Por Favor';
                  }
                  return null;
                },
               ), 
               TextFormField(
                decoration: InputDecoration(labelText: 'Campo 3'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha este campo, Por Favor';
                  }
                  return null;
                },
               ),
               SizedBox(height: 20),
               ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processando dados...')),
                    );
                  }
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
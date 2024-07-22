// lib/screens/developers_screen.dart

import 'package:flutter/material.dart';

class DevelopersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações dos Desenvolvedores'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DeveloperInfo(
              name: 'Bruna Stofel',
              role: 'Flutter Developer',
              email: 'bstofel1@gmail.com',
            ),
            // Adicione mais DeveloperInfo widgets conforme necessário
          ],
        ),
      ),
    );
  }
}

class DeveloperInfo extends StatelessWidget {
  final String name;
  final String role;
  final String email;

  DeveloperInfo({required this.name, required this.role, required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              role,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 8),
            Text(
              email,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Explore Mundo: Descubra o Inexplorado',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Há 30 anos, a Explore Mundo nasceu no Ceará com a missão de revelar o remoto, o inexplorado e o local. Nossa filosofia é realçar a identidade e a beleza natural do Brasil, explorando territórios únicos e promovendo a conservação.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

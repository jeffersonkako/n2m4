import 'package:flutter/material.dart';
import 'package:n2m4/screens/destinations_tab.dart';
import 'package:n2m4/widgets/custom_search_delegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Explore Mundo'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Destinos'),
              Tab(text: 'Pacotes'),
              Tab(text: 'Contato'),
              Tab(text: 'Sobre Nós'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DestinationsTab(),
            Icon(Icons.card_travel),
            Icon(Icons.contact_mail),
            Icon(Icons.info),
          ],
        ),
      ),
    );
  }
}

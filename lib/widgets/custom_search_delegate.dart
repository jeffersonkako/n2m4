import 'package:flutter/material.dart';
import 'package:n2m4/models/destination.dart';
import 'package:n2m4/screens/destination_detail_screen.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<Destination> destinations = Destination.getDestinations();
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? []
        : destinations
            .where((destination) =>
                destination.name.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        var destination = suggestions[index];
        return ListTile(
          title: Text(destination.name ?? 'Destino Desconhecido'),
          onTap: () {
            query = destination.name ?? '';
            showResults(context);
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = destinations
        .where((destination) =>
            destination.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (results.isEmpty) {
      return const Center(
        child: Text('Sem resultados no momento.'),
      );
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        var destination = results[index];
        return Card(
          child: ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      destination.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(destination.name),
                ),
                const Icon(Icons.star, color: Colors.amber),
                const Text("10"),
              ],
            ),
            subtitle: Text(destination.location),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DestinationDetailScreen(destination: destination),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }
}

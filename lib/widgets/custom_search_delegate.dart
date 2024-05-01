import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<String> destinations = [
    'Fortaleza',
    'Recife',
    'Maceió',
  ];

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? []
        : destinations
            .where((dest) => dest.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    bool isDestinationValid = destinations.contains(query);

    if (!isDestinationValid) {
      return const Center(
        child: Text('Sem resultados no momento.'),
      );
    }

    return ListView.builder(
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        if (destinations[index].toLowerCase().contains(query.toLowerCase())) {
          return ListTile(
            title: Text(destinations[index]),
          );
        }
        return Container();
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

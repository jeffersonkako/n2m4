import 'package:flutter/material.dart';
import 'package:n2m4/models/destination.dart';
import 'package:n2m4/screens/destination_detail_screen.dart';

class DestinationsTab extends StatelessWidget {
  const DestinationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = Destination.getDestinations();

    return ListView.builder(
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        var destination = destinations[index];
        return Card(
          child: ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(destination.imagePath),
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
}

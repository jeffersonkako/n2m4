import 'package:flutter/material.dart';
import 'package:n2m4/models/destination.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

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
                const Icon(Icons.attach_money, color: Colors.green),
                const Text("100,00"),
              ],
            ),
            subtitle: Text(destination.location),
          ),
        );
      },
    );
  }
}

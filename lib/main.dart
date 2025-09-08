import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Page',
      theme: ThemeData(
        // Set a theme color that feels more dog-friendly, like a warm brown.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const DogPage(title: 'Meet Our Dog'),
    );
  }
}

class DogPage extends StatefulWidget {
  const DogPage({super.key, required this.title});

  final String title;

  @override
  State<DogPage> createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Use a Column to stack the widgets vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Use a Card widget to give the content a nice, elevated look.
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Display a cute dog image using a placeholder.
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://placehold.co/200x200/BCAAA4/FFF?text=Dog',
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Add the dog's name and bio.
                    const Text(
                      'Buddy',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'A friendly golden retriever who loves to play fetch and cuddle.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    // Add a row of icons for fun.
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.pets, color: Colors.brown),
                        SizedBox(width: 10),
                        Icon(Icons.favorite, color: Colors.red),
                        SizedBox(width: 10),
                        Icon(Icons.toys, color: Colors.brown),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

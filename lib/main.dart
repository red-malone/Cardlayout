import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Responsive Cards'),
        ),
        body: MyCards(),
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  final double initialGreyAreaWidth = 100.0;
  final double initialGreyAreaHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          // Card 1: ON TOP
          Expanded(
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.9, // Adjust as needed
                    heightFactor: 0.2, // Maintain the same proportion
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Card 2: AT THE BOTTOM
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 50,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FractionallySizedBox(
                        widthFactor: 0.9, // Maintain the same proportion
                        heightFactor: 0.2, // Adjust as needed
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

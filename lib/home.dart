import 'package:flutter/material.dart';
import 'package:laba11/widgets/corner_sliders.dart';
import 'package:laba11/widgets/rounded_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text('Rounded Corners App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedContainer(),
            SizedBox(height: 50),
            Expanded(
                child: CornerSliders()),
          ],
        ),
      ),
    );
  }
}

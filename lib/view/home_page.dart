import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/Feed_Card.dart';

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
        title: Center( // Menggunakan Center untuk menempatkan judul di tengah
          child: const Text(
            "AraaraApp",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: ListView(
        children: const [
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
        ],
      ),
    );
  }
}

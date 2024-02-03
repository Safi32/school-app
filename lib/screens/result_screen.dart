import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  static String routeName = "ResultScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Results"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 20,
          ),
          Text("You are excellent",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w900,
            ),
          ),
          Text("Safiullah!!",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter tutorial"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Hello, world!"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Text("Add"),
        ),
      ),
    ),
  );
}

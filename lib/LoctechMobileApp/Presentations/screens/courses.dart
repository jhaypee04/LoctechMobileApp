import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200.0,
        children: List.generate(
          10,
          (index) => Card(
              child: Center(
            child: Text('Item$index'),
          )),
        ),
      ),
    );
  }
}

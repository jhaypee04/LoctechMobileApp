import 'package:flutter/material.dart';
import 'package:m/LoctechMobileApp/Presentations/components/instructors_cards.dart';

class LoctechInstructors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loctech Instructors'),
      ),
      body: ListView(
        children: <Widget>[
          InstructorCards(),
          InstructorCards(),
          InstructorCards(),
          InstructorCards(),
        ],
      ),
    );
  }
}

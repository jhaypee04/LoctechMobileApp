import 'package:flutter/material.dart';
import 'package:m/LoctechMobileApp/Presentations/components/instructors_cards.dart';

class LoctechInstructors extends StatelessWidget {
  const LoctechInstructors({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loctech Instructors'),
      ),
      body: ListView(
        children: const <Widget>[
          InstructorCards(),
          InstructorCards(),
          InstructorCards(),
          InstructorCards(),
        ],
      ),
    );
  }
}

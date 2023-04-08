import 'package:flutter/material.dart';
import 'package:m/LoctechMobileApp/Presentations/components/instructors_cards.dart';

class Staffs extends StatefulWidget {
  const Staffs({Key? key}) : super(key: key);

  @override
  State<Staffs> createState() => _StaffsState();
}

class _StaffsState extends State<Staffs> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loctech Instructors'),
        bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: const TextStyle(fontSize: 18),
            indicatorWeight: 3.0,
            tabs: [
              Tab(text: 'Instructors'),
              Tab(text: 'Management'),
            ]),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200.0,
        children: List.generate(
          10,
          (index) => const Card(
              child: Center(
            child: InstructorCards(),
          )),
        ),
      ),
    );
  }
}

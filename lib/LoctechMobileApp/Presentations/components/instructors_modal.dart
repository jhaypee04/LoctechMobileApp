import 'package:flutter/material.dart';

class InstructorModal extends StatelessWidget {
  const InstructorModal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.blue[500],
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return const InstructorCourseItem();
          }),
    );
  }
}

class InstructorCourseItem extends StatelessWidget {
  const InstructorCourseItem({Key? key}) : super(key: key);
  final courseLogo =
      "https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png";
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
          leading: FlutterLogo(),
          title: Text('Handling:'),
          subtitle: Text('Flutter and Dart')),
    );
  }
}
// CircleAvatar(
//         radius: 30.0,
//         backgroundImage: NetworkImage(courseLogo),
//       ),

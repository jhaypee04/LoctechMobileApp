import 'package:flutter/material.dart';

class InstructorModal extends StatelessWidget {
  const InstructorModal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: const Color(0xff07ff30),
      child: ListView(
        children: const <Widget>[
          InstructorCourseItem(),
          InstructorCourseItem(),
          InstructorCourseItem(),
          InstructorCourseItem(),
        ],
      ),
    );
  }
}

class InstructorCourseItem extends StatelessWidget {
  const InstructorCourseItem({Key? key}) : super(key: key);
  final courseLogo =
      "https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      height: 80,
      color: Colors.blue.shade400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(courseLogo),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  color: const Color(0xff706c6c),
                  width: 200,
                  height: 30,
                  child: const Text('handling:')),
              const SizedBox(
                height: 10,
              ),
              Container(
                  color: const Color(0xff706c6c),
                  width: 250,
                  height: 30,
                  child: const Text('Course Handling')),
            ],
          ),
        ],
      ),
    );
  }
}

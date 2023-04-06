import 'package:flutter/material.dart';
import 'package:m/LoctechMobileApp/Presentations/components/instructors_modal.dart';

class InstructorCards extends StatelessWidget {
  const InstructorCards({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber[600],
      child: Row(
        children: const <Widget>[
          SizedBox(width: 20),
          InstructorCard(),
          SizedBox(width: 20),
          InstructorCard(),
        ],
      ),
    );
  }
}

class InstructorCard extends StatelessWidget {
  const InstructorCard({Key? key}) : super(key: key);
  final profileImage =
      'https://scontent-los2-1.xx.fbcdn.net/v/t39.30808-6/330567788_773736734093115_5651617552966218097_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHMBE_xTUZkqhjyZ07cT9ty0grr4UtwxR_SCuvhS3DFH0zF_AmPLM7daDmq746SB4Prz-n2RRi1wTYC9N4oJQQR&_nc_ohc=wuY0n3z0bUoAX8Npv0Y&_nc_ht=scontent-los2-1.xx&oh=00_AfDPxPuqgG_9uMpFgRbujnfz3UTcuuYYfn-wneWqaKaaHw&oe=64318A8C';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      width: 150,
      height: 180,
      color: Colors.white,
      child: Column(children: [
        CircleAvatar(
          radius: 40.0,
          backgroundImage: NetworkImage(profileImage),
        ),
        const Center(
          child: Text('Edozie Johnpaul Uzoma'),
        ),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return const InstructorModal();
                });
          },
          child: const Text('Profile'),
        ),
      ]),
    );
  }
}

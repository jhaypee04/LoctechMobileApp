import 'package:flutter/material.dart';
import 'package:m/LoctechMobileApp/Presentations/screens/bottom_bar.dart';
// import 'package:m/LoctechMobileApp/Presentations/screens/loctech_instructors.dart';
// import 'package:m/LoctechMobileApp/Presentations/screens/home.dart';

void main() {
  runApp(const LoctechMobileApp());
}

class LoctechMobileApp extends StatelessWidget {
  const LoctechMobileApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Loctech Mobile App",
      // home: Home(),
      home: BottomBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key : key);
//   final profileImage =
//       'https://scontent-los2-1.xx.fbcdn.net/v/t39.30808-6/330567788_773736734093115_5651617552966218097_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHMBE_xTUZkqhjyZ07cT9ty0grr4UtwxR_SCuvhS3DFH0zF_AmPLM7daDmq746SB4Prz-n2RRi1wTYC9N4oJQQR&_nc_ohc=wuY0n3z0bUoAX8Npv0Y&_nc_ht=scontent-los2-1.xx&oh=00_AfDPxPuqgG_9uMpFgRbujnfz3UTcuuYYfn-wneWqaKaaHw&oe=64318A8C';
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

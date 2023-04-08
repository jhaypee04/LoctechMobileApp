import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static List<String> names = [
    "Creative Designs",
    "Software Development",
    "Business Professional",
    "Production Designs",
    "Media Professional",
    "Server and Networking",
    "Security",
    "Data Professional",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOCTECH'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
                  child: Text(
                    'Today\'s Deals',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        print('You tapped on the Image');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image(
                          image: const NetworkImage(
                            'https://pbs.twimg.com/profile_banners/2420276082/1677765185/1500x500',
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 110,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
                  child: Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('You tapped on View all');
                  },
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xff1e88e5),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        child: Container(
                      width: 200,
                      height: 00,
                      child: Center(
                        child: Text('Item$index'),
                      ),
                    ));
                  }),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
                  child: Text(
                    'Top Categories',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(children: [
              for (var i in names)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  height: 200,
                  width: MediaQuery.of(context).size.width - 12,
                  child: Card(
                    child: Center(child: Text(i)),
                  ),
                ),
            ]),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 0, 12),
                  child: Text(
                    'How can we help you At Loctech?',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: const <Widget>[
                Card(
                  child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Life Mentoring'),
                      subtitle: Text(
                          'Get some soul heading and guidance for your future IT career and vocational directions.')),
                ),
                Card(
                  child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Self-Development'),
                      subtitle: Text(
                          'Develop IT skills for career of various majors including web development, programming and designs.')),
                ),
                Card(
                  child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Remote Learning'),
                      subtitle: Text(
                          'Learn from anywhere in the world on desktop, tablet or mobile phone with an Internet connection.')),
                ),
                Card(
                  child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Consultancy'),
                      subtitle: Text(
                          'Create an appointment with our consultant to learn what\'s best for your dream career or your business.')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

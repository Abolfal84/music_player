import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlayPage extends StatefulWidget {
  PlayPage({Key? key}) : super(key: key);

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33383C),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 50.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0)),
                        height: 80.0,
                        width: 1000.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF5A5C5F),
                                    blurRadius: 30.0,
                                    offset: const Offset(0, 0),
                                  )
                                ]),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Color(0xff212429),
                                  child: Icon(Icons.arrow_back),
                                ),
                              ),
                            ),
                            Text(
                              'Play Now',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.white38),
                            ),
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF5A5C5F),
                                  blurRadius: 30.0,
                                  offset: const Offset(0, 0),
                                )
                              ]),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundColor: Color(0xff212429),
                                child: Icon(Icons.list),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0xFF5A5C5F),
                          blurRadius: 50.0,
                          offset: const Offset(0, 0),
                        )
                      ]),
                      child: CircleAvatar(
                        radius: 130.0,
                        backgroundColor: Color(0xff212429),
                        backgroundImage: AssetImage('img/fire.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'PasManChi',
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    Text(
                      'Wantons',
                      style: TextStyle(fontSize: 20.0, color: Colors.white30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Image.asset('img/slider.png'),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Color(0xFF5A5C5F),
                              blurRadius: 40.0,
                              offset: const Offset(0, 0),
                            )
                          ]),
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Color(0xff212429),
                            child: Icon(FontAwesomeIcons.backward),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Color(0xFF5A5C5F),
                              blurRadius: 40.0,
                              offset: const Offset(0, 0),
                            )
                          ]),
                          child: CircleAvatar(
                            radius: 60.0,
                            backgroundColor: Color(0xFFF33302),
                            child: Icon(FontAwesomeIcons.stop),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Color(0xFF5A5C5F),
                              blurRadius: 40.0,
                              offset: const Offset(0, 0),
                            )
                          ]),
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Color(0xff212429),
                            child: Icon(FontAwesomeIcons.forward),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

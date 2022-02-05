import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player/pages/favority_page.dart';
import 'select_page.dart';

class HomeePage extends StatefulWidget {
  HomeePage({Key? key}) : super(key: key);

  @override
  State<HomeePage> createState() => _HomeePageState();
}

class _HomeePageState extends State<HomeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33383C),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Playlists',
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                        Text(
                          'You have 10 playlists',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white10),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0xff85888D),
                          blurRadius: 30.0,
                          offset: const Offset(0, 0),
                        )
                      ]),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Color(0xff212429),
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
                child: Divider(
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FavorityPage()));
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xff23262B),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF5A5D61),
                            blurRadius: 30.0,
                          )
                        ]),
                    height: 200.0,
                    width: 1000.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundColor: Color(0xFF0A0A0A),
                                child: Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Favorites',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Pas Man Chi',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white24),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '253',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Songs',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white24),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
                child: Divider(
                  color: Colors.black87,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Reccommended',
                      style: TextStyle(fontSize: 25.0, color: Colors.white)),
                  SizedBox(
                    height: 35.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff26292E),
                                  borderRadius: BorderRadius.circular(30.0)),
                              height: 190.0,
                              width: 220.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Color(0xFF0A0A0A),
                                      child: Icon(
                                        FontAwesomeIcons.music,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Text('All song',
                                      style: TextStyle(
                                          fontSize: 25.0, color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff26292E),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 190.0,
                            width: 220.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: Color(0xFF0A0A0A),
                                    child: Icon(
                                      FontAwesomeIcons.star,
                                      color: Colors.white54,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Text('Top 50',
                                    style: TextStyle(
                                        fontSize: 25.0, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff26292E),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 190.0,
                            width: 220.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: Color(0xFF0A0A0A),
                                    child: Icon(
                                      FontAwesomeIcons.instagram,
                                      color: Colors.white54,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Text('Click me',
                                    style: TextStyle(
                                        fontSize: 25.0, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

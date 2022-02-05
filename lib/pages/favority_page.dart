import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player/pages/play_page.dart';

class FavorityPage extends StatefulWidget {
  FavorityPage({Key? key}) : super(key: key);

  @override
  State<FavorityPage> createState() => _FavorityPageState();
}

class _FavorityPageState extends State<FavorityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33383C),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
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
                          'Favorites',
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'You have 10 song favority',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white30),
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
                        child: Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ahang(
                    ahangname: 'PasManChi',
                    khanandeh: 'Wantons',
                  ),
                  ahang(
                    ahangname: 'YwBaramMan',
                    khanandeh: 'Wantons(Ft Behzad lito)',
                  ),
                  ahang(
                    ahangname: 'BoomNaghashi',
                    khanandeh: 'Wantons',
                  ),
                  ahang(
                    ahangname: 'AzTehranMotenaferand',
                    khanandeh: 'ZedBazi',
                  ),
                  ahang(
                    ahangname: 'TabsttonKotahe',
                    khanandeh: 'ZedBazi',
                  ),
                  ahang(
                    ahangname: 'Seyl',
                    khanandeh: 'Shaye(Ft MehradHiden)',
                  ),
                  ahang(
                    ahangname: 'Roc A Chak',
                    khanandeh: 'Mehrad Hiden(Ft Reza Pishro)',
                  ),
                  ahang(
                    ahangname: 'Yakuza',
                    khanandeh: 'Sepehr Khalse(Ft Tasmony)',
                  ),
                  ahang(
                    ahangname: 'BemonBaMan',
                    khanandeh: 'Arta(Ft Korosh)',
                  ),
                  ahang(
                    ahangname: 'HaminimKeHastim',
                    khanandeh: 'Wantons',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PlayPage()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(30.0)),
            height: 65.0,
            child: Center(
              child: Text(
                'RANDOM',
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ahang extends StatelessWidget {
  const ahang({required this.ahangname, required this.khanandeh});
  final String khanandeh;
  final String ahangname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PlayPage()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('$ahangname',
                    style: TextStyle(fontSize: 25.0, color: Colors.white)),
                Text('$khanandeh',
                    style: TextStyle(fontSize: 20.0, color: Colors.white24))
              ],
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xFF505255),
                  blurRadius: 30.0,
                  offset: const Offset(0, 0),
                )
              ]),
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.black,
                child: Icon(FontAwesomeIcons.play),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

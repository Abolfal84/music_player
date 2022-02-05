import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'play_page.dart';

class SelectPage extends StatefulWidget {
  SelectPage({Key? key}) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33383C),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0xFF505255),
                          blurRadius: 30.0,
                          offset: const Offset(0, 0),
                        )
                      ]),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Color(0xff212429),
                        child: Icon(FontAwesomeIcons.solidHeart),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
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
                        radius: 70.0,
                        backgroundImage: AssetImage('img/fire.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
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
                        child: Icon(FontAwesomeIcons.list),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Divider(
                  color: Colors.black,
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

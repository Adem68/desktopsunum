import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitlePage extends StatefulWidget {
  const TitlePage({Key key}) : super(key: key);
  _TitlePageState createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Stack(
      children: [
        Center(
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Center(
          child: new Image.asset(
            'assets/img/bg.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
             padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                  'Flutter Desktop (GO)',
                  style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Image.asset(
            'assets/img/cover.png',
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold),
          child: Container(
            margin: MediaQuery.of(context).size.height > 800 ? EdgeInsets.only(bottom: 15) : EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/img/me.jpg',
                    width: MediaQuery.of(context).size.height > 800 ? 140.0 : 100,
                    height: MediaQuery.of(context).size.height > 800 ? 140.0 : 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: MediaQuery.of(context).size.height > 800 ? EdgeInsets.only(bottom: 15) : EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Adem Furkan ÖZCAN',
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.telegram, color: Colors.lightBlue),
                          SizedBox(
                            width: 5,
                          ),
                          FaIcon(FontAwesomeIcons.github, color: Colors.black),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '@Adem68',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '@AdemOzcan68',
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:desktopsunum/pages/slide_page.dart';
import 'package:desktopsunum/pages/title_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';

void main() {
  // Enables rendering on desktop
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(PresentationExample());
}

class PresentationExample extends StatefulWidget {
  const PresentationExample({Key key}) : super(key: key);
  @override
  _PresentationExampleState createState() => _PresentationExampleState();
}

class _PresentationExampleState extends State<PresentationExample> {
  PageController _controller;
  PresentationController _presentationController;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _presentationController = PresentationController(controller: _controller);
  }

  @override
  void dispose() {
    _presentationController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: Material(
          child: Presentation(
        enableMouseNavigation: true,
        controller: _controller,
        presentationController: _presentationController,
        children: [
          TitlePage(),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    '\$whoami',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  '* MIS Student @ Istinye University\n\n* Jr. Flutter Developer\n\n* Flutter Turkey Core Member',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                ),
              )
            ],
          )),
          SlidePage(Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Flutter Desktop',
                  style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  'TECHNICAL PREVIEW!',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  '(WIP)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Flutter Desktop (GO)',
                  style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/gofluttergithub.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://github.com/go-flutter-desktop/go-flutter',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Flutter Desktop (Rust)',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/flutterrustgithub.png',
                  height: 394,
                  width: 416,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://github.com/flutter-rs/flutter-rs',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Raspberry Pi',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/flutterpi-gh.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://github.com/ardera/flutter-pi',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Kurulum',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/code1.png',
                  height: 600,
                  width: 1200,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Kurulum',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/code2.png',
                  height: 600,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Windows Release Mode',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  'Implement release mode for Windows #38477',
                  style: TextStyle(fontSize: 20, decoration: TextDecoration.underline),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/img/code3.png',
                ),
              ),
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Eksiklikler',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100, left: 10, right: 10),
                child: Text(
                  '* Official kütüphanelerin çoğu desktop’u (Linux, macOS, Windows) desteklemiyor\n\n* Community kütüphanelerinin çoğunun desteği yok\n\n* Varolan projenizi direk build alamayabiliyorsunuz',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          )),
          SlidePage(
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Eksiklikler',
                      style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100, left: 10, right: 10),
                  child: Image.asset(
                    'assets/img/firebasesupport.png',
                  ),
                ),
              ],
            ),
          ),
          SlidePage(Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Resmi Kütüphaneler',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100, left: 250),
                child: Text(
                  '* url_launcher (macOS)\n\n* shared_preferences (macOS)\n\n* connectivity (macOS)\n\n* path_provider (Linux, macOS)',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          )),
          SlidePage(Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Topluluk Kütüphaneleri',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100, left: 250),
                child: Text(
                  '* sign_in_with_apple (macOS)\n\n* cross_local_storage (Linux, macOS, Windows)\n\n* octo_image (macOS)\n\n* file_picker (Linux, macOS, Windows)\n\n* path_provider (Linux, macOS)',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'UI Örnekleri',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/netflix.gif',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://twitter.com/Zfinix1/status/1275393350674325505/',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'UI Örnekleri',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/bigsur.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://twitter.com/lesliearkorful/status/1275452457091387395/',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'UI Örnekleri',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/appstore.gif',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://twitter.com/OluwatomisinEs2/status/1275693271453446145/',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Örnek Uygulamalar',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/sharezone.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://sharezone.net/',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Örnek Uygulamalar',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/widgetstudio.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'https://twitter.com/WidgetStudioApp',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )),
          SlidePage(Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Dinlediğiniz için teşekkürler',
                    style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 80),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(
                  'assets/img/ty.webp',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Powered by Flutter Desktop 💙',
                  style: TextStyle(fontSize: 60, color: Colors.blue),
                ),
              )
            ],
          )),
        ],
      )),
    );
  }
}

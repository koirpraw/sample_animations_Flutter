import 'package:animation_samples/screens/animatedIconPage.dart';
import 'package:animation_samples/screens/expandCardPage.dart';
import 'package:animation_samples/screens/progressButtonPage.dart';
import 'package:animation_samples/utils/theme.dart';
import 'package:animation_samples/utils/themeservice.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

import 'screens/homePage/homePage.dart';


void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: MyTheme().lightTheme,
      darkTheme: MyTheme().darkTheme,
      themeMode: ThemeServices().getThemeMode(),
      home: HomePage(),
    );
  }
}

class SimpleAnimations extends StatefulWidget {
  @override
  State<SimpleAnimations> createState() => _SimpleAnimationsState();
}

class _SimpleAnimationsState extends State<SimpleAnimations>
    with SingleTickerProviderStateMixin {
  late final _animationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

  late double _width = 200;
  late double _height = 200;
  late Color _color = Colors.blue;

  void _expandAnimate() {
    setState(() {
      _width = 300;
      _height = 300;
      _color = Colors.purple;
    });
  }

  void rotateForward() {
    setState(() {
      _animationController.forward();
    });
  }

  void rotatereverse() {
    setState(() {
      _animationController.reverse(from: 5);
    });
  }

  // @override
  // void initState(){
  // super.initState();
  // _animationController.forward();
  // }

  // @override
  // void dispose(){
  //   _animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation samples"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedContainer(
                height: _height,
                width: _width,
                color: _color,
                duration: Duration(milliseconds: 500),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        rotatereverse();
                      },
                      child: Text("Reverse")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RotationTransition(
                      turns: _animationController,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        rotateForward();
                      },
                      child: Text("Forward"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextPage()));
                  },
                  child: Hero(tag: 'animP2', child: Text("NextPage"))),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _expandAnimate();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: 'animP2',
                child: Container(
                    height: 60,
                    width: 100,
                    color: Colors.blue,
                    child: Center(
                        child: Text(
                      "Page2",
                      style: TextStyle(color: Colors.white),
                    ))))
          ],
        ),
      ),
    );
  }
}

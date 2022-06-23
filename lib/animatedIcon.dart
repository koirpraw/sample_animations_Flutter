import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyAnimatedIconPage extends StatefulWidget {
  const MyAnimatedIconPage({Key? key}) : super(key: key);

  @override
  State<MyAnimatedIconPage> createState() => _MyAnimatedIconPageState();
}

class _MyAnimatedIconPageState extends State<MyAnimatedIconPage> with TickerProviderStateMixin {
  bool expanded = true;
  late AnimationController iconController;

  @override
    void initState(){
      super.initState();
      iconController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 400),
        reverseDuration: Duration(milliseconds: 400)
      );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpandCard"),

      ),
      body: Center(
        child: Container(
          height: Get.height*0.6 ,
          width: Get.width*0.8,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              children: [
                Card(
                  child: Center(
                    child: IconButton(

                      icon: AnimatedIcon(

                          icon: AnimatedIcons.pause_play,
                          progress: iconController,
                      ), onPressed: ()=> setState((){
                        expanded? iconController.forward(): iconController.reverse();
                        expanded = !expanded;
                    }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



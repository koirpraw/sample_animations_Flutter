import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandCard extends StatefulWidget {
  const ExpandCard({Key? key}) : super(key: key);

  @override
  State<ExpandCard> createState() => _ExpandCardState();
}

class _ExpandCardState extends State<ExpandCard> {
  bool isTapped = true;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpandCard"),


      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              InkWell(
                // highlightColor: Colors.transparent,
                splashColor: Color(0x25948EFB),
                onTap: () => setState(() {
                  isTapped = !isTapped;
                }),
                onHighlightChanged: (value) {
                  setState(() {
                    isExpanded = value;
                  });
                },
                child: AnimatedContainer(
                  padding: EdgeInsets.all(12),

                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: isTapped
                        ? isExpanded
                            ? 65
                            : 70
                        : isExpanded
                            ? 225
                            : 230,
                    width: isExpanded ? 385 : 390,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x10000000).withOpacity(0.20),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: isTapped
                        ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Tap to see Full Options"),
                                  Icon(
                                    isTapped
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    size: 27,
                                    color: Colors.blueGrey,
                                  )
                                ],
                              ),
                            ],
                          )
                        : Column(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Tap to see Full Options",),
                              Icon(
                                isTapped
                                    ? Icons.keyboard_arrow_down
                                    : Icons.keyboard_arrow_up,
                                size: 27,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              optionCard(optionTitle: 'Get Stats', optionIcon: Icons.query_stats,snackbarTitle:'Get Stats', snackbarMessage: 'Checkout your progress',

                              ),
                              optionCard(optionTitle: 'Add Steps', optionIcon: Icons.directions_walk, snackbarTitle: 'Add Steps',snackbarMessage: 'Lets do some serious damage today', ),
                              optionCard(optionTitle: 'Add Journal', optionIcon: Icons.note_add, snackbarTitle: 'Add Journal', snackbarMessage: 'Lets create a Journal',),
                              optionCard(optionTitle: 'Settings', optionIcon: Icons.settings, snackbarMessage: 'Settings', snackbarTitle: 'Settings',),


                            ],
                          ),
                        )

                      ],
                    ),
                ),
              ),
              SizedBox(height: 8,width: 40,),
              // ElevatedButton(onPressed: (){
              //   Get.back();
              // }, child: Icon(Icons.chevron_left,size: 32,))
            ],

          ),
        ),
      ),
    );
  }
}

class optionCard extends StatelessWidget {

  late String optionTitle;
  late IconData optionIcon;
  late String snackbarTitle,snackbarMessage;


   optionCard({
    required this.optionTitle,required this.optionIcon,required this.snackbarTitle,required this.snackbarMessage
  }) ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.blue.withOpacity(0.5),
        focusColor: Colors.blue.withOpacity(0.5),
        onTap: (){
          Get.snackbar(snackbarTitle, snackbarMessage);
        },
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(optionTitle,),
              Icon(optionIcon,)
            ],
          ),
        ),
      ),
    );
  }
}

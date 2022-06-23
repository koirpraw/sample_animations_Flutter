import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {

  late String menuTitle;
  late Function() navRoute;
  MenuCard({
    required this.menuTitle,
    required this.navRoute,

  }) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navRoute,
      child: Card(
        elevation: 4,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(menuTitle),
              IconButton(
                  onPressed: navRoute,
                  icon: Icon(Icons.chevron_right))
            ],
          ),
        ),
      ),
    );
  }
}
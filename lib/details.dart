import 'package:flutter/material.dart';
import 'util.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Details extends StatelessWidget {
  final String drinkPath;
  final String drinkTag;
  Details(this.drinkPath, this.drinkTag);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    timeDilation = 10;
    pop() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Herom Animation"),
      ),
      body: Center(
          //child: Util.buildHeroDestination(drinkPath, drinkTag, width),
          child: Util.buildHeroRadialDestination(drinkPath, drinkTag, width, height, pop),
          ),
    );
  }
}

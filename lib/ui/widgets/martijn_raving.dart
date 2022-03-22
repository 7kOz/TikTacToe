import 'package:flutter/material.dart';

class MartijnRaving extends StatefulWidget {
  const MartijnRaving({Key? key}) : super(key: key);

  @override
  State<MartijnRaving> createState() => _MartijnRavingState();
}

class _MartijnRavingState extends State<MartijnRaving>
    with SingleTickerProviderStateMixin {
  //Animation
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = CurvedAnimation(
        parent: animationController as AnimationController,
        curve: Curves.easeInCirc);
    animationController!.repeat();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotationTransition(
        turns: animation as dynamic,
        child: Container(
          child: Image.asset('assets/1.png'),
        ),
      ),
    );
  }
}

// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  Animation<Color> coloranim;
  AnimationController controller;
  int count = 0;

  initState() {
    super.initState();
    controller = AnimationController(
      value: 0.0,
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    // Example 1: Linear Animation, 0.0 to 1.0
    //animation = controller;

    // Example 2: Tween Animation, 0.0 to 100.0
    animation = Tween(begin: 0.0, end: 320.0).animate(controller);

    // Example 3: Non-Linear Animation, 0.0 to 1.0
    //animation = new CurvedAnimation(parent: controller, curve: Curves.bounceIn);

    // Example 4: ColorTween, black to white
    // Don't forget to uncomment decorate to see effect
    coloranim = ColorTween(
      begin: Colors.black,
      end: Colors.yellow,
    ).animate(controller)
      ..addListener(() {
        setState(() {
          // Update if state change impacts color
        });
      });
    

    // Example 5: Chained Tweens
    /*
    coloranim = ColorTween(
      begin: Colors.black,
      end: Colors.yellow,
    ).chain(
      CurveTween(curve: Curves.bounceIn)
    ).animate(controller)
    ..addListener(() {
      setState(() {
        // Update if state change impacts color
      });
    });
    */

    animation.addListener(() {
      setState(() {
        count++;
        print("Animation value ${count}: ${animation.value}");
        // the state that has changed here is the animation object’s value
      });
    });
    controller.forward();
  }

  Widget build(BuildContext context) {
    return Container(
      // Uncomment for Example 4
      //decoration: new BoxDecoration(color: coloranim.value),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          //child: FlutterLogo(),
          child: Image.asset(
            'images/dcnyc.png',
            fit: BoxFit.contain,
          ),
        ),
      )
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    title: "Animation Demos",
    home: LogoApp(),
  ));
}

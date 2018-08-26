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
  AnimationController controller;
  int count=0;

  initState() {
    super.initState();
    controller = AnimationController(
      value: 0.0,
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    //animation = Tween(begin: 0.0, end: 100.0).animate(controller);
    animation = controller;
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
    return Center(
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: animation.value*20,
          width: animation.value*20,
          //child: FlutterLogo(),
          child: Image.asset(
            'images/dcnyc.png',
            fit: BoxFit.contain,
          )),
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(LogoApp());
}

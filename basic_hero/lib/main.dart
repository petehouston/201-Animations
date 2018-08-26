// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can
// be found in the LICENSE file.

// Demonstrates a basic shared element (Hero) animation.

import 'package:flutter/material.dart';

class BasicHeroAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<Null>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Flippers Page'),
                    ),
                    body: Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.topLeft,
                      // Use background color to emphasize that it's a new route.
                      color: Colors.white,
                      child: Hero(
                        tag: 'flippers',
                        child: SizedBox(
                          width: 100.0,
                          child: Image.asset(
                            'images/dcsf.png',
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          // Main route
          child: Hero(
            tag: 'flippers',
            child: Image.asset(
              'images/dcnyc.png',
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: BasicHeroAnimation(),
  ));
}

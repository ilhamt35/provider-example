import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application_color.dart';

class SingleProvider extends StatelessWidget {
  static const routeName = '/singleProvider';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => AnimatedContainer(
                  width: 150,
                  height: 150,
                  duration: Duration(microseconds: 250),
                  color: applicationColor.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('grey'),
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Switch(
                      value: applicationColor.isBlueAccent,
                      onChanged: (value) {
                        applicationColor.isBlueAccent = value;
                      },
                    ),
                  ),
                  Text('Blue Accent')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

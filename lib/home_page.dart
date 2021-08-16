import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Providers'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/single');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return SingleProvider();
                  // }));
                },
                child: Text('Single Provider')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dual');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return DualProviders();
                  // }));
                },
                child: Text('Dual Providers'))
          ],
        ),
      ),
    );
  }
}

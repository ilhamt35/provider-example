import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';
import 'money.dart';

class DualProviders extends StatelessWidget {
  const DualProviders({Key? key}) : super(key: key);

  static const routeName = '/dualProvider';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Money>(create: (context) => Money()),
        ChangeNotifierProvider<Cart>(create: (context) => Cart())
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dual Providers'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer<Money>(
                  builder: (context, money, _) => Text(money.money.toString())),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(4),
                child: Consumer<Cart>(
                  builder: (context, cart, _) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('500 x ${cart.entity}'),
                      Text((500 * cart.entity).toString())
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4)),
              )
            ],
          ),
        ),
        floatingActionButton: Consumer<Money>(
          builder: (context, money, _) => Consumer<Cart>(
            builder: (context, cart, _) => FloatingActionButton(
              onPressed: () {
                if (money.money > 0) {
                  cart.entity++;
                  money.money -= 500;
                }
              },
              child: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/count_provider.dart';

class RemoveFromCart extends StatefulWidget {
  const RemoveFromCart({super.key});

  @override
  State<RemoveFromCart> createState() => _RemoveFromCartState();
}

class _RemoveFromCartState extends State<RemoveFromCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add_shopping_cart),
        title: const Text("Add to Cart"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Consumer<CountProvider>(
        builder: (context, countProviderModule, child) => Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Text(
                  countProviderModule.count.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                const Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: countProviderModule.add,
                  icon: const Icon(Icons.add),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("PreviousPage")),
              ],
            )
          ],
        )),
      ),
    );
  }
}

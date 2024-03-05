import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/count_provider.dart';
import 'package:shopping_cart/ramove_from_cart.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add_shopping_cart),
        title: const Text("Add to Cart"),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Consumer<CountProvider>(
        builder: (context, countProviderModule, child) => Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: countProviderModule.add,
                  icon: const Icon(Icons.add),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RemoveFromCart()));
                    },
                    child: const Text("NextPage")),
              ],
            )
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int count = 0;
  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_shopping_cart),
        title: const Text("Add to Cart"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Text(
                count.toString(),
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
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              TextButton(onPressed: () {}, child: const Text("NextPage")),
            ],
          )
        ],
      )),
    );
  }
}

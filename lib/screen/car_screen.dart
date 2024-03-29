import 'package:flutter/material.dart';
import 'package:furnished_app/utils/global.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 25,
                    ),
                  ),
                  const Text(
                    "Cart",
                    style: TextStyle(fontSize: 25),
                  ),
                  FloatingActionButton.small(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.more_horiz,
                    ),
                  )
                ],
              ),
              Column(
                children: List.generate(cartList.length, (index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2)),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                              "${cartList[index
                              ]['image']}",
                              width: 110)),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${cartList[index]['name']}",
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Text(
                                "₹${cartList[index]['price']}",
                                style: const TextStyle(fontSize: 28),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              InkWell(onTap: () {
                                setState(() {
                                  cartList.removeAt(index);
                                });
                              },
                                child: const Icon(
                                  Icons.delete,
                                  size: 35,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

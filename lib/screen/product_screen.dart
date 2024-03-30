import 'package:flutter/material.dart';
import 'package:furnished_app/utils/global.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute.of(context)!.settings.arguments as Map;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff5f6fa),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.sizeOf(context).width,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.only(bottomLeft: Radius.circular(80)),
                    child: Image.asset("${m1['image']}",
                        height: 900, width: MediaQuery.sizeOf(context).width),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            size: 40,
                          ),
                        ),
                        const Text(
                          "Product",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.shopping_cart,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "₹${m1['price']}.00",
                        style: const TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Text(
                        "${m1['name']}",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "% On Sale",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Color option",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.red),
                            shape: BoxShape.circle),
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: const BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "CHAIR CRAFT Velvet Upholstered Modern Accent Arm Chair for Living "
                "and Dining Room Mid-Century Club Guest Seat with Golden Legs Standard ",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    letterSpacing: 2),
              ),
            ),
            const SizedBox(
              height: 15.5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 70,
                width: 220,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff252A3E),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                child: InkWell(
                    onTap: () {
                      cartList.add(m1);
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "＋ Add to cart",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

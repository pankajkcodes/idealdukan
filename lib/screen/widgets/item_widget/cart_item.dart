import 'package:flutter/material.dart';
import 'package:idealdukan/styles/details_screen_style.dart';

class SingleCartItem extends StatefulWidget {
  const SingleCartItem({Key? key}) : super(key: key);

  @override
  State<SingleCartItem> createState() => _SingleCartItemState();
}

class _SingleCartItemState extends State<SingleCartItem> {
  @override
  Widget build(BuildContext context) {
    String? sizeController;
    String? colorController;
    String? quantityController;
    return Card(
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://m.media-amazon.com/images/I/71WTxTRa1NL._AC_UL480_FMwebp_QL65_.jpg"))),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "4 stripe kurti",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "laddies original",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "400",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "500",
                                style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(8),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black26,
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: sizeController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      hint: const Text(
                        "Size",
                        style: DetailScreenStylies.productDropDownValueStyle,
                      ),
                      items: ["M", "L", "S", "XL", "XXL"]
                          .map(
                            (e) => DropdownMenuItem(child: Text(e), value: e),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          sizeController = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: colorController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      hint: const Text(
                        "Colors",
                        style: DetailScreenStylies.productDropDownValueStyle,
                      ),
                      items: ["red", "white", "black", "blue", "orange"]
                          .map(
                            (e) => DropdownMenuItem(child: Text(e), value: e),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          colorController = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: quantityController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      hint: const Text(
                        "Quantity",
                        style: DetailScreenStylies.productDropDownValueStyle,
                      ),
                      items: ["1", "2", "3", "4", "5"]
                          .map(
                            (e) => DropdownMenuItem(child: Text(e), value: e),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          quantityController = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:idealdukan/screen/widgets/appbar_widget/mycart_appbar_widget.dart';
import 'package:idealdukan/screen/widgets/item_widget/cart_item.dart';
import 'package:idealdukan/utils/app_colors.dart';

class CartFrgamnet extends StatefulWidget {
  const CartFrgamnet({Key? key}) : super(key: key);

  @override
  State<CartFrgamnet> createState() => _CartFrgamnetState();
}

class _CartFrgamnetState extends State<CartFrgamnet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCartAppBarWidget(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your Cart Items",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "You have 4 Items In Your Cart",
                ),
                const SingleCartItem(),
                const SingleCartItem(),
                const SingleCartItem(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                   
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.only(right: 20),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            "8734259426982317",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                          child: MaterialButton(
                        height: 40,
                        elevation: 0,
                        color: AppColors.btOrangeColor,
                        child: const Text(
                          "Employ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide.none),
                      ))
                    ],
                  ),
                ),
                ListTile(
                  title: Column(
                    
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Order Amount",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Your Total Discount Amount",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "400",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "-100",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: MaterialButton(
              color: AppColors.btnDangerColor,
              height: 45,
              elevation: 0,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              onPressed: () {},
              child: const Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

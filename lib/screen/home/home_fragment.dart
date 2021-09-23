import 'package:flutter/material.dart';
import 'package:idealdukan/screen/item_widgets/single_product_widget.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return SingleProductWidget(
                productImage:
                    "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80",
                productName: "Product1",
                productType: "Type1",
                productPrice: 16,
                productOldPrice: 20,
                onPressed: () {});
          }),
    );
  }
}

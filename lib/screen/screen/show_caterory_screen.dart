import 'package:flutter/material.dart';
import 'package:idealdukan/data/home_page_data.dart';
import 'package:idealdukan/screen/widgets/item_widget/show_category_data.dart';

class ShowCategoryScreen extends StatelessWidget {
  const ShowCategoryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TabDataWidget(productData: singleProductData),
      
    );
  }
}
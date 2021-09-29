import 'package:flutter/material.dart';
import 'package:idealdukan/screen/widgets/item_widget/category_item_widget.dart';

class CategoryFragment extends StatefulWidget {
  const CategoryFragment({Key? key}) : super(key: key);

  @override
  _CategoryFragmentState createState() => _CategoryFragmentState();
}

class _CategoryFragmentState extends State<CategoryFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoping By Catgory"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            SizedBox(
                height: 800,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                  SingleCategoryItem(catName: "Category 1"),
                  SingleCategoryItem(catName: "Category 2"),
                  SingleCategoryItem(catName: "Category 3"),
                  SingleCategoryItem(catName: "Category 4"),
                  SingleCategoryItem(catName: "Category 5"),
                  SingleCategoryItem(catName: "Category 6"),
                  SingleCategoryItem(catName: "Category 7"),
                  SingleCategoryItem(catName: "Category 8"),
                  SingleCategoryItem(catName: "Category 9"),
                  SingleCategoryItem(catName: "Category 10"),
                   
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

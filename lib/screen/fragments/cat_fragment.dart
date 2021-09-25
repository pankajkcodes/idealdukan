import 'package:flutter/material.dart';
import 'package:idealdukan/utils/app_colors.dart';

class CategoryFragment extends StatefulWidget {
  const CategoryFragment({Key? key}) : super(key: key);

  @override
  _CategoryFragmentState createState() => _CategoryFragmentState();
}

class _CategoryFragmentState extends State<CategoryFragment> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: TabBar(
            indicator: BoxDecoration(color: Colors.transparent),
            unselectedLabelColor: Colors.black,
            labelColor: AppColors.basePrimaryColor,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Text("All"),
              Text("Men"),
              Text("Women"),
              Text("Kids"),
            ],
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Page 1"),
            ),
            Center(
              child: Text("Page 2"),
            ),
            Center(
              child: Text("Page 3"),
            ),
            Center(
              child: Text("Page 4"),
            ),
          ])),
    );
  }
}

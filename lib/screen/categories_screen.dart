import 'package:flutter/material.dart';
import 'package:food_app/widget/category_item.dart';
import 'package:food_app/model/categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiyas meals'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
          itemCount: categories.length,
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index){
             return CategoryItem(
                 categories[index].color,
                 categories[index].title,
                  categories[index].id
             );
          }),
    );
  }
}

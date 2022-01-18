import 'package:flutter/material.dart';
import 'package:food_app/screen/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.color, this.title, this.id );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
            CategoriesMealsScreen.routeName,
            arguments: {
          'id' : id,
          'title' : title
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(title, style: Theme.of(context).textTheme.headline6,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color
              ],
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}

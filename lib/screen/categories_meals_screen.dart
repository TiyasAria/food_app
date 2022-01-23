import 'package:flutter/material.dart';
import 'package:food_app/model/meal.dart';
import 'package:food_app/widget/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
 // buat var untuk nama routes nya
  static const routeName = '/categories-meals';




  @override
  Widget build(BuildContext context) {
    // nyambung yang routes
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    //baru buat constractor didalam sini menggunakan argumnet
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    //ini untuk ngefilter data per category nya
    final categoryMeals = meal.where((mealItem) => mealItem.categories.contains(categoryId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            return MealItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imgUrl: categoryMeals[index].imgUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability);
          },
        itemCount: categoryMeals.length,
      ),
    );
  }
}

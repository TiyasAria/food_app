
import 'package:flutter/material.dart';
import 'package:food_app/screen/categories_meals_screen.dart';
import 'package:food_app/screen/categories_screen.dart';
import 'package:food_app/screen/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiyas meals App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'RobotoCondensed',
        textTheme:  ThemeData.light().textTheme.copyWith(
          bodyText1 :  TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          headline6: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24
          )
        )
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
    //  untuk membuat routes nav
      routes: {
        '/' : (ctx) => CategoriesScreen(),
         CategoriesMealsScreen.routeName :  (ctx) => CategoriesMealsScreen(),
         MealDetailScreen.routeName : (ctx) => MealDetailScreen()
      },
    );
  }
}






import 'package:flutter/material.dart';
import 'package:food_app/screen/categories_meals_screen.dart';
import 'package:food_app/screen/meal_detail_screen.dart';
import 'package:food_app/screen/tabs_screen.dart';

import 'model/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Meal> _favoriteMeals = [];

  void _toggleFavorite(String mealId){
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if(existingIndex >= 0){
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else{
      setState(() {
        _favoriteMeals.add(meal.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  bool  _isMealFavorite(String mealId) {
    return _favoriteMeals.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            fontSize: 24,
            fontWeight: FontWeight.bold
          )
        )
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
    //  untuk membuat routes nav
      routes: {
        '/' : (ctx) => TabsScreen(_favoriteMeals),
         CategoriesMealsScreen.routeName :  (ctx) => CategoriesMealsScreen(),
         MealDetailScreen.routeName : (ctx) => MealDetailScreen(_toggleFavorite, _isMealFavorite)
      },

    );
  }
}





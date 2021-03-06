import 'package:flutter/material.dart';
import 'screen/filter_screen.dart';
import 'screen/tabs_screen.dart';
import './screen/meal_detail_screen.dart';
//import './screen/categories_screen.dart';
import './screen/category_meal_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed',
          ) 
        )
      ),
     // home: CategoriesScreen(),
      routes: {
        '/': (ctx) => TabsScreen(),
        '/category-meals': (ctx) => CategoryMealScreen(),
        '/category-meals-detail': (ctx) => MealDetailScreen(),
        '/filter-screen': (ctx) => FilterScreen()
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => TabsScreen());
      },
    );
  }
}

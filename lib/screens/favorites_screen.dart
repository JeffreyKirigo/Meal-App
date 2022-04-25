import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

class FavouritesScreen extends StatefulWidget {
  final List<Meal> _favoriteMeal;
  const FavouritesScreen(this._favoriteMeal, {Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget._favoriteMeal.isEmpty) {
      return const Center(
        child: Text('You have no favourites - add some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: widget._favoriteMeal[index].id,
            title: widget._favoriteMeal[index].title,
            imageUrl: widget._favoriteMeal[index].imageUrl,
            affordability: widget._favoriteMeal[index].affordability,
            complexity: widget._favoriteMeal[index].complexity,
            duration: widget._favoriteMeal[index].duration.toString(),
          );
        },
        itemCount: widget._favoriteMeal.length,
      );
    }
  }
}

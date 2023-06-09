


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meals.dart';



final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier(): super([]);

bool toggleMealFavoriteStatus(Meal meal){
  final mealIsFavorite = state.contains(meal);

  if(mealIsFavorite){
    state = state.where((m) => m.id != meal.id).toList();
    return false;
  }else{
    state = [...state, meal];
    return true;
  }


}

  
}


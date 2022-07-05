import 'package:flutter/material.dart';
import 'package:recipeapp/models/recipe_model.dart';
import 'package:recipeapp/widgets/ingredient_listviwe_and_slider_widget.dart';
import 'package:sizer/sizer.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  Widget build(BuildContext context) {
    print("statles widget  is called");

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.h,
              width: 99.w,
              child: Image(
                image: AssetImage(recipe.imageUrl),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            BuildIngredientListView(
              recipe: recipe,
            ),
            //to get the optimal performance you must always separate setstate into separate widget
          ],
        ),
      ),
    );
  }
}

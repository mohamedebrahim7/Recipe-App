import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../models/recipe_model.dart';

class buildRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const buildRecipeCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0.sp,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0.w)),
      child: Padding(
        padding: EdgeInsets.all(3.0.w),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            SizedBox(
              height: 2.0.h,
            ),
            Text(
              recipe.label,
              style: TextStyle(
                fontSize: 13.0.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}

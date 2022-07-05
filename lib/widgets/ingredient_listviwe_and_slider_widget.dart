import 'package:flutter/material.dart';

import '../models/recipe_model.dart';

class BuildIngredientListView extends StatefulWidget {
  final Recipe recipe;
  const BuildIngredientListView({Key? key, required this.recipe}) : super(key: key);

  @override
  _BuildIngredientListViewState createState() => _BuildIngredientListViewState();
}

class _BuildIngredientListViewState extends State<BuildIngredientListView> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    print("ingredient listview widget is built");
    return Column(
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(7.0),
          itemCount: widget.recipe.ingredients.length,
          itemBuilder: (BuildContext context, int index) {
            final ingredient = widget.recipe.ingredients[index];
            return Text('${ingredient.quantity * _sliderVal} '
                '${ingredient.measure} '
                '${ingredient.name}');
          },
        ),
        Slider(
          min: 1,
          max: 10,
          divisions: 9,
          label: '${_sliderVal * widget.recipe.servings} servings',
          value: _sliderVal.toDouble(),
          onChanged: (newValue) {
            setState(() {
              _sliderVal = newValue.round();
            });
          },
          activeColor: Colors.green,
          inactiveColor: Colors.black,
        ),
      ],
    );
  }
}

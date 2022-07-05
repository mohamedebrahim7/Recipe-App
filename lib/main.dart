import 'package:flutter/material.dart';
import 'package:recipeapp/screens/home_screen.dart';
import 'package:sizer/sizer.dart';

void main(){
  runApp(const RecipeApp());
}
class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Recipe Calculator',
          theme: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              primary: Colors.grey,
              secondary: Colors.black,
            ),
          ),
          home: const MyHomePage(title: 'Recipe Calculator') ,
        );
      },
    );
  }
}

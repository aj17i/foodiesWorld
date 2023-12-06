import 'package:flutter/material.dart';
import 'Recipe.dart';

class JapanesePage extends StatelessWidget {
  JapanesePage({super.key});
  List<Recipe> JapaneseRecipe = [Recipe('',[],[],'')];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Japanese Recipes',
          style: TextStyle(fontSize: 35, fontFamily: 'OoohBaby'),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 21, 37),
      ),
      body: ListView.builder(
        itemCount: JapaneseRecipe.length,
        itemBuilder: (context, index) {
          Recipe recipe = JapaneseRecipe[index];
          return ListTile(
            title: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    recipe.image,
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(recipe.name),
              ],
            ),
            subtitle: const Center(child: Text('Tap to view recipe details')),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeWidget(recipe: recipe),
                ),
              );
            },
            contentPadding: const EdgeInsets.all(16.0),
          );
        },
      ),
    );
  }
}

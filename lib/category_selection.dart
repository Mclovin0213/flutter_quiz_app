import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/category_item.dart';
import 'package:quiz_app/data/questions.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({
    super.key,
    required this.onCategorySelection
  });

  final void Function(QuestionCategory category) onCategorySelection;

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {

  void chooseCategory(QuestionCategory category) {
    widget.onCategorySelection(category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Select a category!",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CategoryItem(onCategorySelection: chooseCategory, category: QuestionCategory.flutter, imagePath: 'assets/flutter.png',),
                CategoryItem(onCategorySelection: chooseCategory, category: QuestionCategory.basketball, imagePath: 'assets/basketball.png',),
                CategoryItem(onCategorySelection: chooseCategory, category: QuestionCategory.movies, imagePath: 'assets/movie.png',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

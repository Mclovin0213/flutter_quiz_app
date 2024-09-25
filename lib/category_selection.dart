import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Select a category!",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                chooseCategory(QuestionCategory.flutter);
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    image: const DecorationImage(
                      image: AssetImage('assets/flutter.png'),
                      fit: BoxFit.fill
                    ),
                    border: Border.all(color: Colors.white, width: 1)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

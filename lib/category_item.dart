import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/questions.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.onCategorySelection,
    required this.category,
    required this.imagePath
  });

  final void Function(QuestionCategory category) onCategorySelection;
  final QuestionCategory category;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              onCategorySelection(category);
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.fill
                  ),
                  border: Border.all(color: Colors.white, width: 1)),
            ),
          ),
          const SizedBox(height: 6,),
          Text(
            category.name.toUpperCase(),
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}

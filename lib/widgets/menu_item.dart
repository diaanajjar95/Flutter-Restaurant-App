import 'package:flutter/material.dart';
import 'package:restaurant_app/models/menu_meal.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.item,
    required this.onItemClicked,
  });

  final MenuMeal item;
  final void Function(MenuMeal menuMeal) onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          onItemClicked(item);
        },
        splashColor: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize
              .min, // Column will only take the height of its children
          children: [
            Image.asset(
              item.image,
              height: 100,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              item.title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '30 Min',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '120 Sell',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              item.price,
              style: const TextStyle(
                color: Color(0xffff4e02),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

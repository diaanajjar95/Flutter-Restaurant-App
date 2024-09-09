import 'package:flutter/material.dart';
import 'package:restaurant_app/data/dummy_data.dart';
import 'package:restaurant_app/screens/meal_details.dart';
import 'package:restaurant_app/widgets/category_item.dart';
import 'package:restaurant_app/widgets/menu_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 200, // Fixed height for horizontal list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // const SizedBox(width: 16),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          16.0), // Sets the radius for the container
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          16.0), // Applies the same radius to the image
                      child: Image.asset(
                        'assets/images/banner1.jpg',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          16.0), // Sets the radius for the container
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          16.0), // Applies the same radius to the image
                      child: Image.asset(
                        'assets/images/banner2.jpg',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          16.0), // Sets the radius for the container
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          16.0), // Applies the same radius to the image
                      child: Image.asset(
                        'assets/images/banner3.jpg',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Sets rounded corners
                  borderSide: BorderSide.none, // Removes the border line
                ),
                hintText: 'Find your food...',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryItem(category: categories[index]);
                },
              ),
              // child: ListView(
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true, // Allows the GridView to wrap its content
              physics:
                  const NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns in the grid
                crossAxisSpacing: 10.0, // Space between columns
                mainAxisSpacing: 10.0, // Space between rows
                childAspectRatio: 3 / 4, // Width to height ratio of each item
              ),
              itemCount: menuMeals.length,
              itemBuilder: (context, index) {
                return MenuItem(
                  item: menuMeals[index],
                  onItemClicked: (menuMeal) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MealDetailsScreen(),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

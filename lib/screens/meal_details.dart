import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/realburger1.png',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Beef Burger'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Cheesy Mozarella'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.remove,
                          ),
                          Text('4'),
                          Icon(Icons.add),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('size'),
                          Text('Medium'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('size'),
                          Text('Medium'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('size'),
                          Text('Medium'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Row(
                      children: [
                        const Text('\$ 25.80'),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Checkout',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     leading: IconButton(
    //       icon: const Icon(Icons.arrow_back, color: Colors.black),
    //       onPressed: () {
    //         // Back action
    //       },
    //     ),
    //     actions: [
    //       IconButton(
    //         icon: const Icon(Icons.favorite_border, color: Colors.black),
    //         onPressed: () {
    //           // Favorite action
    //         },
    //       ),
    //     ],
    //   ),
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Column(
    //         children: [
    //           // Image Section
    //           Container(
    //             padding: const EdgeInsets.all(
    //               8.0,
    //             ),
    //             height: 250,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(20),
    //               child: Image.asset(
    //                 'assets/images/realburger1.png', // Your burger image path
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 20),

    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

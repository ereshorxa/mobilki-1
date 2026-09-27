import 'package:flutter/material.dart';

class PopularMenuPage extends StatelessWidget {
  const PopularMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FA),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(18, 15, 18, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Заголовок
                    Row(
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFE9EE),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 17,
                            color: Color(0xFFFF5A7A),
                          ),
                        ),
                        const SizedBox(width: 14),
                        const Text(
                          'Popular Menu',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    // Поиск
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 48,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Search',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFE9EE),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(
                            Icons.tune,
                            color: Color(0xFFFF5277),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    const FoodItem(
                      title: 'Original Salad',
                      subtitle: 'Lovy Food',
                      price: '\$8',
                    ),

                    const FoodItem(
                      title: 'Fresh Salad',
                      subtitle: 'Cloudy Resto',
                      price: '\$10',
                    ),

                    const FoodItem(
                      title: 'Yummie Ice Cream',
                      subtitle: 'Circlo Resto',
                      price: '\$6',
                    ),

                    const FoodItem(
                      title: 'Vegan Special',
                      subtitle: 'Haty Food',
                      price: '\$11',
                    ),

                    const FoodItem(
                      title: 'Mixed Pasta',
                      subtitle: 'Recto Food',
                      price: '\$13',
                    ),
                  ],
                ),
              ),
            ),

            // Нижняя навигация
            Container(
              height: 75,
              margin: const EdgeInsets.fromLTRB(18, 0, 18, 12),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomMenuItem(
                    icon: Icons.home,
                    text: 'Home',
                    selected: true,
                  ),
                  BottomMenuItem(
                    icon: Icons.shopping_bag_outlined,
                    text: '',
                  ),
                  BottomMenuItem(
                    icon: Icons.chat_bubble_outline,
                    text: '',
                  ),
                  BottomMenuItem(
                    icon: Icons.person_outline,
                    text: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;

  const FoodItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      margin: const EdgeInsets.only(bottom: 13),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          // Пока используем одну картинку для всех блюд.
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/food_1.png',
              width: 58,
              height: 58,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 13),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),

          Text(
            price,
            style: const TextStyle(
              color: Color(0xFFFF5277),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(width: 6),
        ],
      ),
    );
  }
}

class BottomMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool selected;

  const BottomMenuItem({
    super.key,
    required this.icon,
    required this.text,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    if (selected) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 9,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFFE9EE),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.home,
              color: Color(0xFFFF5277),
              size: 21,
            ),
            const SizedBox(width: 6),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xFFFF5277),
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    return Icon(
      icon,
      color: const Color(0xFFFF5277),
      size: 22,
    );
  }
}
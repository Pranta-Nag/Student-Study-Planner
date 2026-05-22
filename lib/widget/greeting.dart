import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(20),
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 220, 220, 230),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Good Morning,",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "Aarav",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text("👋", style: TextStyle(fontSize: 26)),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "The more you learn,\nthe more you earn.",
                        style: TextStyle(fontSize: 14, height: 1.3),
                      ),
                    ],
                  ),
                ),
                Image.network(
                  "https://images.pexels.com/photos/34957068/pexels-photo-34957068.jpeg",
                  height: 130,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.school, size: 80),
                ),
              ],
            ),
          );
  }
}


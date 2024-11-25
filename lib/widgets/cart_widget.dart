import 'package:cpoy_x_app/widgets/profileuser_widget.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserAvatar(username: 'Pedro'),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Elon Musk @elonmusk · 9h',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'AI will be incredible',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/cart.png',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [  
                        Icon(Icons.comment, size: 20),
                        Text('1.2K', style: TextStyle(fontSize: 12)),

                        Icon(Icons.repeat, size: 20),
                        Text('200', style: TextStyle(fontSize: 12)),
                        
                        Icon(Icons.favorite_border, size: 20),
                        Text('500', style: TextStyle(fontSize: 12)),
                        
                        Icon(Icons.bar_chart, size: 20),
                        Text('1.5K', style: TextStyle(fontSize: 12)),

                        Icon(Icons.bookmark_border, size: 20),
                        Text('400', style: TextStyle(fontSize: 12)),

                        
                        Icon(Icons.share, size: 20),
                        Text('300', style: TextStyle(fontSize: 12)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: const Color.fromARGB(255, 204, 204, 204),
        ),
      ],
    );
  }
}

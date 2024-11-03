import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int offset;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offset,
  });

  final Color blackColor = const Color(0xFF1F1F28);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: Offset(0, -offset * 10),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? Colors.white : blackColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, // name
                        style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 32,
                        )),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(amount, // amount
                            style: TextStyle(
                              color: isInverted ? blackColor : Colors.white,
                              fontSize: 20,
                            )),
                        const SizedBox(width: 5),
                        Text(code, //code
                            style: TextStyle(
                              color: isInverted ? blackColor : Colors.white,
                              fontSize: 18,
                            ))
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(-5, 11),
                    child: Icon(icon, // icon
                        color: isInverted ? blackColor : Colors.white,
                        size: 98),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

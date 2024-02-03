import 'package:flutter/material.dart';
import 'package:goodoc/gen/assets.gen.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    super.key,
    this.isConsumed,
  });

  final bool? isConsumed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF6C63FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 28,
            ),
            child: Image.asset(
              Assets.images.pills.path,
              width: 55,
              height: 55,
            ),
          ),
          Container(
            width: 1,
            height: 112,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              top: 9,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Парацетамол",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Принять 10 пилюль",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFBBBBBB),
                  ),
                ),
                const SizedBox(height: 12),
                isConsumed ?? false
                    ? const Text(
                        "Принято сегодня в 8.00",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4EF500),
                        ),
                      )
                    : const Text(
                        "Еще не принято",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

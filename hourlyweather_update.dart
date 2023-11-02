import 'package:flutter/material.dart';

class HourlyWeatherUpdate extends StatelessWidget {
  const HourlyWeatherUpdate({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  final String time;
  final IconData icon;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 110,
        padding: const EdgeInsetsDirectional.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 8),
            Icon(
              icon,
              size: 35,
            ),
            const SizedBox(height: 8),
            Text(temperature)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/jewel.dart';

class JewelDetailScreen extends StatelessWidget {
  const JewelDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Jewel jewel = ModalRoute.of(context)!.settings.arguments as Jewel;
    return Scaffold(
      appBar: AppBar(
        title: Text(jewel.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                jewel.imageUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              jewel.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              '\$${jewel.price.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.green),
            ),
            const SizedBox(height: 16),
            Text(
              jewel.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
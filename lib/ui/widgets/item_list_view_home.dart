import 'package:e_commerce/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemListViewHome extends StatelessWidget {
  final Product product;
  const ItemListViewHome({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                product.image,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 50,
                height: 25,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.red,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '${product.discountValue}%',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          product.category,
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.grey,
              ),
        ),
        const SizedBox(height: 6.0),
        Text(
          product.title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 6.0),
        Text(
          '${product.price}\$',
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.grey,
              ),
        ),
      ],
    );
  }
}

import 'package:e_commerce/model/product.dart';
import 'package:e_commerce/ui/widgets/headerOfList.dart';
import 'package:e_commerce/ui/widgets/item_list_view_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.linguahouse.com%2Flinguafiles%2Fmd5%2Fc84f5cd26bac3ca54b7088317b56e5a9&f=1&nofb=1&ipt=71496a8a95918baa56a585d89782d43cca7ba0bde9ce33ad584bfd0a555d02c1&ipo=images',
                width: double.infinity,
                height: size.height * .3,
                fit: BoxFit.cover,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Text(
                  'Street clothes',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const HeaderOfList(
                  title: 'Sale',
                  description: 'Super Summer sale',
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: products
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ItemListViewHome(product: e),
                            ))
                        .toList(),
                  ),
                ),
                 const HeaderOfList(
                  title: 'New',
                  description: 'Super Summer sale',
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: products
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ItemListViewHome(product: e),
                            ))
                        .toList(),
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

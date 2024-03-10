import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String image;
  final String id;
  final String title;
  final int price;
  final int? discountValue;
  final String category;
  final double? rate;
  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    this.discountValue,
    this.category = 'Other',
    this.rate,
  });
  @override
  List<Object?> get props => [
        id,
        title,
        price,
        image,
        discountValue,
        category,
        rate,
      ];
}

List<Product> products = [
 const Product(
    id: '1',
    title: 'T-shirt',
    price: 300,
    image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5eQSinRUdU3hobkRummcuwHaHa%26pid%3DApi&f=1&ipt=3d7f041aeee077b332fe4dac7d11a740e3763c86125aeeb81d10fde04c117fac&ipo=images' ,
    category: 'Clothes',
    discountValue: 20,
  ),
  const Product(
    id: '1',
    title: 'T-shirt',
    price: 300,
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5eQSinRUdU3hobkRummcuwHaHa%26pid%3DApi&f=1&ipt=3d7f041aeee077b332fe4dac7d11a740e3763c86125aeeb81d10fde04c117fac&ipo=images',
    category: 'Clothes',
    discountValue: 20,
  ),
  const Product(
    id: '1',
    title: 'T-shirt',
    price: 300,
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5eQSinRUdU3hobkRummcuwHaHa%26pid%3DApi&f=1&ipt=3d7f041aeee077b332fe4dac7d11a740e3763c86125aeeb81d10fde04c117fac&ipo=images',
    category: 'Clothes',
    discountValue: 20,
  ),
  const Product(
    id: '1',
    title: 'T-shirt',
    price: 300,
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5eQSinRUdU3hobkRummcuwHaHa%26pid%3DApi&f=1&ipt=3d7f041aeee077b332fe4dac7d11a740e3763c86125aeeb81d10fde04c117fac&ipo=images',
    category: 'Clothes',
    discountValue: 20,
  ),
  const Product(
    id: '1',
    title: 'T-shirt',
    price: 300,
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5eQSinRUdU3hobkRummcuwHaHa%26pid%3DApi&f=1&ipt=3d7f041aeee077b332fe4dac7d11a740e3763c86125aeeb81d10fde04c117fac&ipo=images',
    category: 'Clothes',
    discountValue: 20,
  ),
];

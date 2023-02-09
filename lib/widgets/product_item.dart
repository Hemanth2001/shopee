import 'package:flutter/material.dart';
import 'package:shopee/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)
            =>ProductDetailScreen(title)));
          },
            child: Image.network(imageUrl, fit: BoxFit.cover)),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            color:Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.start,
          ),
          trailing: IconButton(
            icon: Icon(Icons.card_travel),
            color: Theme.of(context).colorScheme.secondary,

            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

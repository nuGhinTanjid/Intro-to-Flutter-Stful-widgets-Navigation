import 'package:flutter/material.dart';

///class 2

class ProductDetails extends StatelessWidget {
  final String  productdes;
  const ProductDetails(this.productdes);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Product Details') ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(productdes),

            ElevatedButton(
                onPressed:
                (){
                  Navigator.pop(context, 'Hellow TanjidIT');
                },
                child: Text('Back'))
          ],
        )
      ),
    );
  }
}

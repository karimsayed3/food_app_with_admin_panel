import 'package:flutter/material.dart';
import 'package:food/providers/review_cart_provider.dart';
import 'package:provider/provider.dart';

class Count extends StatefulWidget {
  String productName;
  String productImage;
  String productId;
  int productPrice;

  Count({this.productName,this.productId,this.productImage,this.productPrice});

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count>
{
  int count = 1;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
      ReviewCartProvider reviewCartProvider = Provider.of(context);
    return Expanded(
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: isTrue == true? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                if(count==1){
                  setState(() {
                    isTrue = false;
                    count = 1;
                  });
                }
                else{
                  setState(() {
                    count-=1;
                  });
                }
                },
              child: Icon(
                Icons.remove,
                size: 20.0,
                color: Color(0xffd0b84c),
              ),
            ),
            SizedBox(
              width: 1.0,
            ),
            Text(
              "$count",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              width: 1.0,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  count+=1;
                });
              },
              child:Icon(
                Icons.add,
                size: 20.0,
                color: Color(0xffd0b84c),)
            ),
          ],
        ):Center(
          child: InkWell(
            onTap: (){
              setState(() {
                isTrue = true;
              });
              reviewCartProvider.addReviewCartData(
                cartId: widget.productId,
                cartImage: widget.productImage,
                cartName: widget.productName,
                cartPrice: widget.productPrice,
                cartQuantity: count,
              );
            },
            child: Text(
              'ADD',
              style: TextStyle(
                color: Color(0xffd0b84c),
              ),
            ),
          ),
        )
      ),
    );
  }
}

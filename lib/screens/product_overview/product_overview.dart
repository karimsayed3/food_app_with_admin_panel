import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SigninCharacter {
  fill , outline
}
class ProductOverview extends StatefulWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final int productPrice;

  const ProductOverview({Key key, this.productName, this.productImage,this.productDescription,this.productPrice}) : super(key: key);
  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {

  SigninCharacter _character = SigninCharacter.fill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Product Overview',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Color(0xffd6b738),
      ),
      body: Column(
        children: [
           Expanded(
             flex: 2,
             child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        widget.productName??"",
                      ),
                      subtitle: Text(
                        '\$ ${widget.productPrice}'
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 370,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              widget.productImage??"",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(20),
                    //   height: 200,
                    //   child: Image.network(widget.productImage),
                    // ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      width: double.infinity,
                      child: Text(
                        'Available Option',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.green[700],
                                ),
                                Radio(
                                  value: SigninCharacter.fill,
                                  groupValue: _character,
                                  activeColor: Colors.green[700],
                                  onChanged: (value){
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                                Text(
                                  '50 Gram',
                                ),
                              ],
                            ),
                            Text(
                                '\$50'
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 17,
                                    color:  Color(0xffd6b738),
                                  ),
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                      color:  Color(0xffd6b738),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
           ),
           Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About the Product',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                            widget.productDescription,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ),

          // Text(
          //   'Fresh Basil',
          //   style: TextStyle(
          //     fontSize: 25.0,
          //   )
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(
          //   '\$ 50',
          //   style: TextStyle(
          //     color: Colors.green,
          //     fontWeight: FontWeight.bold
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: NetworkImage(
          //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU',
          //       ),
          //       fit: BoxFit.cover,
          //     ),
          //     borderRadius: BorderRadius.circular(10)
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(
          //   'Available Options',
          //   style: TextStyle(
          //     fontSize: 20,
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          bottomNavBar(
            backgroundColor: Colors.black,
            color: Colors.white70,
            iconColor: Colors.grey,
            title: "Add To WishList",
            iconData: Icons.favorite_outline
          ),
          bottomNavBar(
              backgroundColor: Color(0xffd6b738),
              color: Colors.black,
              iconColor: Colors.black,
              title: "Go To Cart",
              iconData: Icons.shop_outlined
          )
        ],
      ),
    );
  }


  Widget bottomNavBar({
    Color iconColor,
    Color backgroundColor,
    Color color,
    String title,
    IconData iconData,
})
{
  return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 20,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                color: color
              ),
            ),
          ],
        ),
      )
  );
}

}

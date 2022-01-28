import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widget/count.dart';

class SingleProduct extends StatelessWidget {

  final String productImage;
  final String productName;
  final int productPrice;
  final Function onTap;
  final String productId;

  const SingleProduct({Key key, this.productImage, this.productName, this.onTap,this.productPrice,this.productId});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            height: 230,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffd9dad9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTap,
                    child:Container(
                      height: 150,
                      padding: EdgeInsets.all(5),
                      width: double.infinity,
                      child: Image(
                        image: NetworkImage(
                          productImage,
                        ),
                        fit: BoxFit.cover
                      ),
                    )
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0,
                        vertical: 5.0
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '${productPrice}\$/50 Gram',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 5.0),
                                  height: 30.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '50 Gram',
                                        style: TextStyle(
                                            fontSize: 10.0
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 18,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Count(
                                productName: productName,
                                productId: productId,
                                productImage: productImage,
                                productPrice: productPrice,
                              ),
                            ],
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Container(
                        //         height: 30.0,
                        //           width: 120,
                        //           child: MaterialButton(
                        //             child: Row(
                        //               children: [

                        //               ],
                        //             ),
                        //               onPressed: (){
                        //
                        //               },
                        //           ),
                        //       ),
                        //     ),
                        //     Expanded(
                        //       child: Container(
                        //         height: 30.0,
                        //           width: 120,
                        //           child: MaterialButton(
                        //             child: Row(
                        //               children: [
                        //                 Expanded(
                        //                   child: Text(
                        //                     '50 Gram',
                        //                     style: TextStyle(
                        //                       fontSize: 10.0
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Expanded(
                        //                   child: Icon(
                        //                     Icons.arrow_drop_down,
                        //                     color: Colors.amber,
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //               onPressed: (){
                        //
                        //               },
                        //           ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
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

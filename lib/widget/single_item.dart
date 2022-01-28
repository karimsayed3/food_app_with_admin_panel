import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widget/count.dart';

class SingleItem extends StatelessWidget {
bool isbool = false;
String productName;
String productImage;
int productPrice;
SingleItem({this.isbool,this.productName,this.productImage,this.productPrice});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    height: 80,
                    child: Center(
                      child: Image.network(productImage),
                    ),
                  ),
              ),
               Expanded(
                  child: Container(
                    height: 80,
                    child: Column(
                      mainAxisAlignment:
                      isbool == false?
                      MainAxisAlignment.spaceAround
                          : MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                productName,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                '$productPrice \$',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        isbool ==false? Container(
                          margin : EdgeInsets.only(right:15),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                    "50 Gram",
                                    style: TextStyle(
                                        color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color:  Color(0xffd1ad17),
                                ),
                              )
                            ],
                          ),
                        ) : Text('50 Gram'),
                      ],
                    ),
                  ),
              ),
               Expanded(
                  child: Container(
                    height: 90,
                    padding: isbool==false?
                    EdgeInsets.symmetric(horizontal: 15,vertical: 30)
                    :EdgeInsets.only(left: 15,right: 15),
                    child: isbool==false?
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Color(0xffd1ad17),
                              size: 20,
                            ),
                            Text(
                              'ADD',
                              style: TextStyle(
                                color: Color(0xffd1ad17),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    :Column(
                      children: [
                        Icon(
                          Icons.delete,
                          size: 30,
                          color:Colors.black54 ,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.remove,
                                  color: Color(0xffd1ad17),
                                  size: 20,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color(0xffd1ad17),
                                  ),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Color(0xffd1ad17),
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
        isbool ==false ?
        Container():
        Divider(
          height: 1,
          color: Colors.black45,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food/widget/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Color(0xffd1ad17),
        title: Text(
          'Review Cart',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          SingleItem(
              isbool:true
          ),
          SingleItem(
              isbool:true
          ),
          SingleItem(
              isbool:true
          ),
          SingleItem(
              isbool:true
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
      bottomNavigationBar: ListTile(
        title: Text(
          'Total Amount'
        ),
        subtitle: Text(
          '\$ 170.0',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        trailing: Container(
          width: 120.0,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            onPressed: ()
            {

            },
            child: Text(
              'Checkout'
            ),
            color: Color(0xffd1ad17),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffcbcbcb),
//       drawer: Drawer(
//         child: Container(
//           color: Color(0xffd1ad17),
//           child: ListView(
//             children: [
//               DrawerHeader(
//                 child: Row(
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: Colors.white54,
//                       radius: 45,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.yellow,
//                         radius: 40,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20.0,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Welcome Guest',
//                         ),
//                         SizedBox(
//                           height: 10.0,
//                         ),
//                         Container(
//                           height: 30.0,
//                           child: OutlineButton(
//                             onPressed: ()
//                             {
//
//                             },
//                             child: Text(
//                                 'Login'
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                               side: BorderSide(
//                                 width: 2,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               listTile(
//                 icon: Icons.home_outlined ,
//                 title: 'Home',
//               ),
//               listTile(
//                 icon: Icons.shop_outlined ,
//                 title: 'Review Cart',
//               ),
//               listTile(
//                 icon: Icons.person_outline ,
//                 title: 'My Profile',
//               ),
//               listTile(
//                 icon: Icons.notifications_outlined ,
//                 title: 'Notification',
//               ),
//               listTile(
//                 icon: Icons.star_outline ,
//                 title: 'Rating & Review',
//               ),
//               listTile(
//                 icon: Icons.favorite_outline ,
//                 title: 'Wishlist',
//               ),
//               listTile(
//                 icon: Icons.copy_outlined ,
//                 title: 'Raise a Complaint',
//               ),
//               listTile(
//                 icon: Icons.format_quote_outlined ,
//                 title: 'FAQs',
//               ),
//
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20.0),
//                 height: 350,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Contact Support',
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             'Call us: ',
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20.0,
//                           ),
//                           Text(
//                             '01156788394',
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             Text(
//                               'Mail us: ',
//                               style: TextStyle(
//                                 color: Colors.grey,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 20.0,
//                             ),
//                             Text(
//                               'abokhadiga6@gmail.com',
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//
//             ],
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//             color: Colors.black
//         ),
//         title: Text(
//           'Home',
//           style: TextStyle(
//               color: Colors.black,
//               fontSize: 17.0
//           ),
//         ),
//         actions: [
//           CircleAvatar(
//             radius: 17.0,
//             backgroundColor: Color(0xffd4d181),
//             child: Icon(
//               Icons.search,
//               size: 25,
//               color: Colors.black,
//             ),
//           ),
//           SizedBox(
//             width: 10.0,
//           ),
//           CircleAvatar(
//             radius: 17.0,
//             backgroundColor: Color(0xffd4d181),
//             child: Icon(
//               Icons.shop,
//               size: 25,
//               color: Colors.black,
//             ),
//           ),
//           SizedBox(
//             width: 10.0,
//           ),
//         ],
//         backgroundColor: Color(0xffd6b738),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView(
//           children: [
//             Container(
//               height: 150.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(
//                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU',
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only( right: 120.0,bottom: 10),
//                             child:Container(
//                               height: 50.0,
//                               width: 150,
//                               decoration: const BoxDecoration(
//                                 color: Color(0xffd1ad17),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(30),
//                                     bottomLeft: Radius.circular(30),
//                                     topLeft: Radius.circular(15)
//                                 ),
//                               ),
//                               child: const Padding(
//                                 padding: EdgeInsets.all(8.0),
//                                 child: Center(
//                                   child: Text(
//                                     'Vegi',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 25.0,
//                                       shadows: [
//                                         BoxShadow(
//                                           color: Colors.green,
//                                           blurRadius: 3,
//                                           offset: Offset(3,3),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Text(
//                             '30% OFF',
//                             style: TextStyle(
//                                 color: Colors.green[100],
//                                 fontSize: 35.0,
//                                 fontWeight: FontWeight.bold
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20.0),
//                             child: Text(
//                               'On all vegetables product',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0),
//               child: Row(
//                 children: [
//                   Text(
//                     'Herbs Seasonings',
//                     style: TextStyle(
//                         fontSize: 20.0
//                     ),
//                   ),
//                   Spacer(),
//                   TextButton(
//                     onPressed: (){},
//                     child: Text(
//                       'View all',
//                       style: TextStyle(
//                           color: Colors.grey
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0),
//               child: Row(
//                 children: [
//                   Text(
//                     'Fresh Fruits',
//                     style: TextStyle(
//                         fontSize: 20.0
//                     ),
//                   ),
//                   Spacer(),
//                   TextButton(
//                     onPressed: (){},
//                     child: Text(
//                       'View all',
//                       style: TextStyle(
//                           color: Colors.grey
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                   singleProduct(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget singleProduct() =>  Container(
//     margin: EdgeInsets.symmetric(horizontal: 5.0),
//     height: 230,
//     width: 150,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       color: Color(0xffd9dad9),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//             flex: 2,
//             child:Image(
//               image: NetworkImage(
//                 'https://www.thespruce.com/thmb/Nfz6JAHm2BZBT2OVC7HGIYQeEhQ=/1425x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grow-an-herb-garden-that-wont-die-1762037-01-cc3f6cbbb5bc43c68faf2890ba5f59bc.jpg',
//               ),
//               fit: BoxFit.cover,
//             )
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: 5.0,
//                 vertical: 5.0
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Freesh Basil',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//                 Text(
//                   '50\$ 50 Gram',
//                   style: TextStyle(
//                       color: Colors.grey,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: Container(
//                         padding: EdgeInsets.only(left: 5.0),
//                         height: 30.0,
//                         width: 60.0,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.grey,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 '50 Gram',
//                                 style: TextStyle(
//                                     fontSize: 10.0
//                                 ),
//                               ),
//                             ),
//                             Icon(
//                               Icons.arrow_drop_down,
//                               size: 18,
//                               color: Colors.amber,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5.0,
//                     ),
//                     Expanded(
//                       child: Container(
//                         height: 30.0,
//                         width: 50.0,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.grey,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.remove,
//                               size: 15.0,
//                               color: Color(0xffd0b84c),
//
//                             ),
//                             Text(
//                               '1',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold
//                               ),
//                             ),
//                             Icon(
//                               Icons.add,
//                               size: 15.0,
//                               color: Color(0xffd0b84c),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Row(
//                 //   children: [
//                 //     Expanded(
//                 //       child: Container(
//                 //         height: 30.0,
//                 //           width: 120,
//                 //           child: MaterialButton(
//                 //             child: Row(
//                 //               children: [
//
//                 //               ],
//                 //             ),
//                 //               onPressed: (){
//                 //
//                 //               },
//                 //           ),
//                 //       ),
//                 //     ),
//                 //     Expanded(
//                 //       child: Container(
//                 //         height: 30.0,
//                 //           width: 120,
//                 //           child: MaterialButton(
//                 //             child: Row(
//                 //               children: [
//                 //                 Expanded(
//                 //                   child: Text(
//                 //                     '50 Gram',
//                 //                     style: TextStyle(
//                 //                       fontSize: 10.0
//                 //                     ),
//                 //                   ),
//                 //                 ),
//                 //                 Expanded(
//                 //                   child: Icon(
//                 //                     Icons.arrow_drop_down,
//                 //                     color: Colors.amber,
//                 //                   ),
//                 //                 ),
//                 //               ],
//                 //             ),
//                 //               onPressed: (){
//                 //
//                 //               },
//                 //           ),
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
//
//   Widget listTile({IconData icon , String title}){
//     return ListTile(
//       leading: Icon(
//         icon,
//         size: 32,
//       ),
//       title: Text(
//         title,
//         style: TextStyle(
//             color: Colors.black45
//         ),
//       ),
//     );
//   }
// }
//
// Widget _buildHerbsProduct(context) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text('Herbs Seasonings'),
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     // builder: (context) => Search(
//                     //   search: productProvider.getHerbsProductDataList,
//                     // ),
//                   ),
//                 );
//               },
//               child: Text(
//                 'view all',
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ),
//           ],
//         ),
//       ),
//       SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: productProvider.getHerbsProductDataList.map(
//                 (herbsProductData) {
//               return SingalProduct(
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       // builder: (context) => ProductOverview(
//                       //   productId: herbsProductData.productId,
//                       //   productPrice: herbsProductData.productPrice,
//                       //   productName: herbsProductData.productName,
//                       //   productImage: herbsProductData.productImage,
//                       // ),
//                     ),
//                   );
//                 },
//                 productImage: "https://www.thespruce.com/thmb/Nfz6JAHm2BZBT2OVC7HGIYQeEhQ=/1425x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grow-an-herb-garden-that-wont-die-1762037-01-cc3f6cbbb5bc43c68faf2890ba5f59bc.jpg",
//                 productName: "3nab",
//               );
//             },
//           ).toList(),
//           // children: [
//
//           // ],
//         ),
//       ),
//     ],
//   );
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/providers/product_provider.dart';
import 'package:food/screens/home/drawer_side.dart';
import 'package:food/screens/home/singal_product.dart';
import 'package:food/screens/product_overview/product_overview.dart';
import 'package:food/screens/search/search.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductProvier productProvier;
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Herbs Seasonings'),
              GestureDetector(
                onTap: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(
                    search: productProvier.getHerbsProductDataList,
                  ),
                  ),
                  );
                },
                child: Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvier.getHerbsProductDataList.map(
                    (herbsProductData) {
                      return SingleProduct(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ProductOverview(productName: herbsProductData.productName,productImage: herbsProductData.productImage,productPrice: herbsProductData.productPrice,productDescription: herbsProductData.productDescription,)
                            ),
                          );
                        },
                        productImage: herbsProductData.productImage,
                        productName: herbsProductData.productName,
                        productPrice: herbsProductData.productPrice,
                        productId: herbsProductData.productId,
                      );
                    }).toList()
            )
            // children: [
            // ],
          ),
      ],
    );
  }
  Widget _buildFruitsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fersh Fruits'),
              GestureDetector(
                onTap: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(search: productProvier.getFruitsProductDataList,),
                  ),
                  );
                },
                child: Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvier.getFruitsProductDataList.map(
                    (fruitsProductData) {
                      return SingleProduct(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ProductOverview(productName: fruitsProductData.productName,productImage: fruitsProductData.productImage,productPrice: fruitsProductData.productPrice,productDescription: fruitsProductData.productDescription,)
                              // ),
                            ),
                          );
                        },
                        productImage: fruitsProductData.productImage,
                        productName: fruitsProductData.productName,
                        productPrice: fruitsProductData.productPrice,
                        productId: fruitsProductData.productId,
                      );
                    }).toList()
            )
            // children: [
            // ],
          ),
      ],
    );
  }
  Widget _buildVegetablesProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Root Vegetables'),
              GestureDetector(
                onTap: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(),
                  ),
                  );
                },
                child: Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvier.getHerbsProductDataList.map(
                    (herbsProductData) {
                      return SingleProduct(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ProductOverview(productName: herbsProductData.productName,productImage: herbsProductData.productImage,productPrice: herbsProductData.productPrice,productDescription: herbsProductData.productDescription,)
                              //   productPrice: herbsProductData.productPrice,
                              //   productName: herbsProductData.productName,
                              //   productImage: herbsProductData.productImage,
                              // ),
                            ),
                          );
                        },
                        productImage: herbsProductData.productImage,
                        productName: herbsProductData.productName,
                        productPrice: herbsProductData.productPrice,
                      );
                    }).toList()
            )
            // children: [
            // ],
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    productProvier = Provider.of(context);
    productProvier.fetchHerbsProductData();
    productProvier.fetchFruitsProductData();
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color:  Colors.black
        ),
        title: const Text(
          'Home',
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.0
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(
                search: productProvier.getAllProductDataList,
              )));
            },
             icon :const CircleAvatar(
              radius: 17.0,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.search,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const CircleAvatar(
            radius: 17.0,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.shop,
              size: 25,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU',
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only( right: 120.0,bottom: 10),
                            child:Container(
                              height: 50.0,
                              width: 150,
                              decoration: const BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    topLeft: Radius.circular(15)
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    'Vegi',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 3,
                                          offset: Offset(3,3),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% OFF',
                            style: TextStyle(
                                color: Colors.green[100],
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'On all vegetables product',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFruitsProduct(context),
          ],
        ),
      ),
    );
  }

  Widget singleProduct() =>  Container(
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
        const Expanded(
            flex: 2,
            child:Image(
              image: NetworkImage(
                'https://www.thespruce.com/thmb/Nfz6JAHm2BZBT2OVC7HGIYQeEhQ=/1425x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grow-an-herb-garden-that-wont-die-1762037-01-cc3f6cbbb5bc43c68faf2890ba5f59bc.jpg',
              ),
              fit: BoxFit.cover,
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
                const  Text(
                  'Freesh Basil',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const Text(
                  '50\$ 50 Gram',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
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
                          children: const [
                            Expanded(
                              child: Text(
                                '50 Gram',
                                style: TextStyle(
                                    fontSize: 10.0
                                ),
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
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 30.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.remove,
                              size: 15.0,
                              color: Color(0xffd0b84c),

                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: 15.0,
                              color: Color(0xffd0b84c),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget listTile({IconData icon , String title}){
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black45
        ),
      ),
    );
  }
}



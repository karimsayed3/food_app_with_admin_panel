import 'package:flutter/material.dart';
import 'package:food/My_Profile/myProfile.dart';
import 'package:food/screens/home/home_screen.dart';
import 'package:food/screens/review_cart/review_cart.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile({IconData icon, String title,Function onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                 const CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 40,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage:  NetworkImage("https://s3.envato.com/files/328957910/vegi_thumb.png"),
                      // child: Image(
                      //   image: NetworkImage("https://s3.envato.com/files/328957910/vegi_thumb.png"),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const  Text(
                        'Welcome Guest',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                       Container(
                        height: 30.0,
                        child: OutlineButton(
                          onPressed: () {},
                          child:const Text('Login'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side:const BorderSide(
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              icon: Icons.home_outlined,
              title: 'Home',
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()),);
              },
            ),
            listTile(
              icon: Icons.shop_outlined,
              title: 'Review Cart',
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReviewCart()),);
              },
            ),
            listTile(
              icon: Icons.person_outline,
              title: 'My Profile',
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfile()),
                );
              }
            ),
            listTile(
              icon: Icons.notifications_outlined,
              title: 'Notification',
            ),
            listTile(
              icon: Icons.star_outline,
              title: 'Rating & Review',
            ),
            listTile(
              icon: Icons.favorite_outline,
              title: 'Wishlist',
            ),
            listTile(
              icon: Icons.copy_outlined,
              title: 'Raise a Complaint',
            ),
            listTile(
              icon: Icons.format_quote_outlined,
              title: 'FAQs',
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 350,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contact Support',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: const[
                        Text(
                          'Call us: ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          '01156788394',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const[
                          Text(
                            'Mail us: ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'abokhadiga6@gmail.com',
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
    );
  }
}

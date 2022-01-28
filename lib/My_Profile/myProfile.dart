import 'package:flutter/material.dart';
import 'package:food/screens/home/drawer_side.dart';

class MyProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd1ad17),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Color(0xffd1ad17),
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black
          ),
        ),
      ),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Color(0xffd1ad17),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffcbcbcb),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 250,
                            height: 80,
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Karim Sayed',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'abokhadiga6@gmail.com',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54
                                      ),
                                    ),

                                  ],
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xffd1ad17),
                                  child: CircleAvatar(
                                    radius: 12,
                                    child: Icon(
                                      Icons.edit,
                                      color: Color(0xffd1ad17),
                                      size: 15,
                                    ),
                                    backgroundColor: Color(0xffcbcbcb),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      listTile(
                        icon: Icons.shop_outlined,
                        title: "My Orders"
                      ),
                       listTile(
                        icon: Icons.location_off_outlined,
                        title: "My Delevery Adress"
                      ),
                       listTile(
                        icon: Icons.person_outline,
                        title: "Refer A Friend"
                      ),
                       listTile(
                        icon: Icons.file_copy_outlined,
                        title: "Terms & Conditions"
                      ),
                       listTile(
                        icon: Icons.policy_outlined,
                        title: "Privacy Policy"
                      ),
                       listTile(
                        icon: Icons.add_chart,
                        title: "About"
                      ),
                       listTile(
                        icon: Icons.exit_to_app_outlined,
                        title: "Log Out"
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0,left: 30),
            child: CircleAvatar(
              backgroundColor: Color(0xffd1ad17) ,
              radius: 50,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xffcbcbcb),
                backgroundImage:  NetworkImage("https://s3.envato.com/files/328957910/vegi_thumb.png"),
                // child: Image(
                //   image: NetworkImage("https://s3.envato.com/files/328957910/vegi_thumb.png"),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget listTile({IconData icon,String title}){
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(
            title,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

}

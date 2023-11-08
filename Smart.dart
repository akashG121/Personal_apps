import 'package:flutter/material.dart';
import 'package:shopping_mart/advertisement.dart';
import 'package:shopping_mart/mobiles_deals.dart';
import 'package:shopping_mart/mobile_brands_list.dart';
import 'package:shopping_mart/other_apps_list.dart';
import 'package:shopping_mart/profile_page.dart';
import 'package:shopping_mart/provider_for_index.dart';
import 'package:shopping_mart/range_list.dart';
import 'package:shopping_mart/shopping_list.dart';
import 'package:shopping_mart/variety_list.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:provider/provider.dart';
import 'amezon_products.dart';
import 'categories.dart';
import 'croma_page.dart';
import 'flipkart_page.dart';
import 'laptops_deals.dart';
import 'mintra_page.dart';
import 'my_jio_page.dart';

class Mart extends StatefulWidget {
  const Mart({super.key});

  @override
  State<Mart> createState() => _MartState();
}

class _MartState extends State<Mart> {

  int _index = 0;
var usableIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        onTap: (index) {
          usableIndex = Provider.of<Index_Change>(context, listen: false).updateSelectedIndex(index); // Use listen: false if you don't want to rebuild this widget.
          //_index = Provider.of<Index_Change>(context).selectedContainerIndex;
          // setState(() {
          //   _index = index;
          // if(index==1){
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => categories_page()),
          //   );
          // }
          // else if(index==2){
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => profile_Page()),
          //   );
          // }
          // else{
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => HomeScreen()),
          //   );
          // }

          // });
        },

        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),

        body:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            child: Column(children: [
              SizedBox(
               // height: MediaQuery.of(context).size.height / 4,
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: ItemsList.length,
                  itemBuilder: (context, index) {
                    Items product = ItemsList[index];
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MobilePage()));
                        }
                        else if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LaptopPage()));
                        } else if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LaptopPage()));
                        } else if (index == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MobilePage()));
                        } else if (index == 4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MobilePage()));
                        }
                      },
                      child:SizedBox(
                        height: 400,
                        width: 200,
                        child: Column(
                          children: [
                            Image.asset(product.imageURL),
                            Text(product.title),
                          ],
                        ),
                      ),
                    );
                    // return Container(child: Text(Items.title),);
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 90,
                // height: 600,
                width: MediaQuery.of(context).size.width,
                //width: 350,
                child: ListView.builder(
                  itemCount: BrandsList.length,
                  itemBuilder: (context, index) {
                    Other_App app_brands = Other_AppList[index];
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => amezon_products()));
                        } else if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => flipkart_home()));
                        } else if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => croma_home()));
                        } else if (index == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => myntra_home()));
                        } else if (index == 4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => myjio_home()));
                        }
                      },
                      child: SizedBox(
                        height: 50,
                        width: 130,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius:
                              30, // Set the desired radius for the circular avatar
                              backgroundImage: AssetImage(app_brands.imageURL),
                            ),
                            // Image.asset(BRANDS.imageURL, fit: BoxFit.fitHeight,),

                            Text(app_brands.title),
                          ],
                        ),
                      ),
                    );
                    // return Container(child: Text(Items.title),);
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: BrandsList.length,
                  itemBuilder: (context, index) {
                    Advertisements Adds = AdvertisementsList[index];
                    return GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        child: Image.asset(Adds.imageURL),
                      ),
                    ); // return Container(child: Text(Items.title),);
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Set the border radius as needed
                  side: BorderSide(
                    color: Colors.grey, // Border color
                    width: 2.0,           // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,top: 1),
                        child: Text("Best Product By Category",style: TextStyle(fontWeight: FontWeight.w700),),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: BrandsList.length,
                        itemBuilder: (context, index) {
                          types_of_gadgets gadgets_type = types_of_gadgetsList[index];
                          return GestureDetector(
                            onTap: () {
                              // Provider.of<Index_Change>(context, listen: false).updateSelectedIndex(index);
                              // setState(() {
                              //  selectedContainerIndex = Provider.of<Index_Change>(context).selectedContainerIndex;
                              // });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.grey, // You can specify the color you want for the border
                                  width: 1.0,           // You can specify the width of the border
                                ),
                              ),
                              height: 10,
                              width: MediaQuery.of(context).size.width / 5,
                              child: Center(child: Text(gadgets_type.type)),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Container(
                      height: 150,
                      padding: const EdgeInsets.all(10),
                      color: Colors.white60,
                      child: ListView.builder(
                        itemCount: BrandsList.length,
                        itemBuilder: (context, index) {
                          range_of_products range_type = range_of_productsList[index];
                          return GestureDetector(
                            onTap: () {
                            },
                            child: Card(
                              color: Color(0xFFFFF0E5),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey, // You can specify the color you want for the border
                                    width: 1.0,           // You can specify the width of the border
                                  ),
                                ),
                                height: 10,
                                width: MediaQuery.of(context).size.width / 3,
                                child: Center(child: Text("${range_type.range}  \n        ${range_type.prices}")),
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                      // Center(
                      //   child: Text(
                      //     types_of_gadgetsList[selectedContainerIndex].type,
                      //     style: TextStyle(color: Colors.red),
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),

            ]),
          ),
        ),
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Shoppingkart'),
          backgroundColor: Colors.black,
          actions: [
            // SizedBox(
            //   height: 5,
            //   width: 10,
            //   child: TextField(decoration: InputDecoration(
            //     fillColor: Colors.white60,
            //     hintText: "Search...",
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     )
            //   ),
            //   ),
            // ),

            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp"),
                ),
                accountName: Text("Ketan Bhambure"),
                accountEmail: Text("ketanbhau007@gmail.com"),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUuKZUkq0ozjzV9dY6OC_1SKqzbVFMObSAkFbearmd&s"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.mobile_friendly_outlined),
                title: const Text('Mobiles'),
                onTap: () async {
                  const url = 'https://www.mi.com/in/';

                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.tablet),
                title: const Text('Tablets'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.laptop_chromebook),
                title: const Text('Laptops'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.tv),
                title: const Text('TVs'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt_outlined),
                title: const Text('Camera'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.watch),
                title: const Text('SmartWatches'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.headset),
                title: const Text('Earphones'),
                onTap: () {},
              )
            ],
          ),
        ),
    );

  }
}

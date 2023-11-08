import 'package:flutter/material.dart';

import 'mobile_brands_list.dart';
class MobilePage extends StatefulWidget {
  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClip(),
              child: Container(
                height: 170.0,
                color: Colors.blueGrey,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Mobile",
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 45.0,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 34.0, vertical: 30.0),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search for the best",
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 14.0),
                            suffixIcon: Icon(
                              Icons.search,
                              size: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Our Specials",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 22.0),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 14.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
              child: ListView.builder(
                itemCount: BrandsList.length,
                itemBuilder: (context,index){
                  Brands MobileProducts=BrandsList[index];
                  return GestureDetector(
                    onTap: (){
                    },
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [

                          CircleAvatar(
                            radius: 30, // Set the desired radius for the circular avatar
                            backgroundImage: AssetImage(MobileProducts.imageURL),
                          ),
                          // Image.asset(BRANDS.imageURL, fit: BoxFit.fitHeight,),

                          Text(MobileProducts.title),
                        ],
                      ),
                    ),

                  );
                  // return Container(child: Text(Items.title),);
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blueGrey),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            getSmallItem("/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/most_popular_mobiles/images.jpeg", 14000, 4, "Redmi Note12 Pro", "20% Discount"),
            getSmallItem("/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/most_popular_mobiles/mmQBFADWBcz4utpTudvQXE.jpg", 20000, 7, "Google Pixel 8", "18% Discount"),
            getSmallItem("/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/most_popular_mobiles/mxw_1440f_auto-16.png", 25000, 6, "Vivo V27", "10% Discount"),

          ],
        ),
      ),
    );
  }
}


getItem(img) {
  return Container(
    margin: const EdgeInsets.all(2.0),
    width: 150.0,

    decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/images/mobiles_img.webp"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0)),
  );
}


// child: ListView.builder(
//
//
// itemCount: BrandsList.length,
// itemBuilder: (context,index){
// Brands product=BrandsList[index];
// return GestureDetector(
// child: SizedBox(
// height: 400,
// width: 200,
// child: Expanded(
// child: Column(
//
// children: [
// Image.asset(product.imageURL),
//
// Text(product.title),
// ],
// ),
// ),
// ),
// );}),


getSmallItem(String img, price, time, name, flavor) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Card(
      child: Row(
        children: <Widget>[
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
          ),



          const SizedBox(width: 10.0),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "$name",
                    style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    "$flavor",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  )
                ],
              )),

          const SizedBox(width: 20.0),
          ClipPath(
            clipper: MyClip2(),
            child: Container(
              width: 100.0,
              height: 70.0,
              color: Colors.green,
              child: Center(
                child: Text(
                  "\₹$price",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 50.0);
    path.quadraticBezierTo(
        size.width - 70.0, size.height, size.width / 2, size.height - 20);
    path.quadraticBezierTo(size.width / 3.0, size.height - 32, 0, size.height);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
class MyClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(10, size.height / 2 , 10, size.height / 2);
    path.quadraticBezierTo(10, size.height / 2, 10, size.height / 2);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

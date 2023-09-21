import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15,top: 60,bottom:30),
              height: MediaQuery.of(context).size.height*0.5,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('assets/images/background1.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: null, icon: Icon(Icons.menu,color: Colors.white,size: 30,)),
                      Expanded(child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Good evening',
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                              Text("Devon",
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15))
                          ],
                        ),
                          IconButton(onPressed: null,alignment: Alignment.centerRight,
                          icon: Icon(Icons.notifications,color: Colors.white,size: 30,)),
                        ],
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                        text: "Send",
                        buttonColor: Colors.white, 
                        textColor: Colors.black, 
                        onPressed: () {},
                      ),
                      CustomElevatedButton(
                        text: "Request",
                        buttonColor: Colors.black, 
                        textColor: Colors.white, 
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("History",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),),
                  Text("View all",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),)
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: const EdgeInsets.all(10),
                crossAxisCount: 2, // Two items in each row
                children: List.generate(4, (index) {
                    return Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/background2.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25)
                        ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/icons/profile.png'),
                                radius: 15.0,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text( "Kaiya",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "29/09/0001",
                                    style: TextStyle(fontSize: 14, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Text(
                            "+ \$250",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  CustomElevatedButton({
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor, 
        minimumSize: Size(MediaQuery.of(context).size.width*0.45, MediaQuery.of(context).size.width*0.20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor, 
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
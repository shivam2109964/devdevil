import 'package:carousel_slider/carousel_slider.dart';
import 'package:devdevil/view_model/bottom_nav/bottom_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  static const String routeNamed = 'Home-Page';
  Home({super.key});
  final List<String> assets = [
    'assets/basic.png',
    'assets/dsa.png',
    'assets/iv.png',
    'assets/oops.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1E3FF),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0), // Set height for the AppBar
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
          ),
          child: AppBar(
            primary: true,
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFFFFFFFF), // Customize AppBar color
            title: Image.asset(
              "assets/devve.png",
              height: 30,
            ),
            actions: [
              Image.asset(
                "assets/streak.png",
                height: 30,
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<BottomNavBloc, int>(
        builder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Skill Snapshot",
                        style: GoogleFonts.exo2(),
                      ),
                      const Spacer(),
                      Text(
                        "Details",
                        style: GoogleFonts.exo2(),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/data.png",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Challenge Zones",
                        style: GoogleFonts.exo2(),
                      ),
                    ],
                  ),
                  CarouselSlider.builder(
                    itemCount: assets.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Image.asset(
                          assets[index],
                          fit: BoxFit.cover,
                          width: double
                              .infinity, // Make sure the image stretches properly
                          height: 300, // Adjust the height as needed
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 270.0, // Set the height for the carousel
                      enlargeCenterPage:
                          true, // This will make the middle item slightly larger
                      scrollDirection: Axis
                          .horizontal, // Set the scroll direction to horizontal
                      autoPlay: true,
                      aspectRatio: 16 / 9, // Aspect ratio for each image
                      viewportFraction:
                          0.4, // Controls the size of the images, increase to make middle item larger
                    ),
                  )
                ],
              ),
            );
          } else if (index == 1) {
            return Text("hii");
          } else if (index == 2) {
            return Text("hiii");
          } else if (index == 3) {
            return Text("hiiiii");
          } else {
            return Container();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavBloc, int>(
        builder: (context, index) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), // Circular top-left corner
              topRight: Radius.circular(30), // Circular top-right corner
            ),
            child: NavigationBar(
              selectedIndex: index,
              onDestinationSelected: (index) {
                BlocProvider.of<BottomNavBloc>(context).add(
                  BottomNavEvent.values[index],
                );
              },
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.bolt_outlined), label: "Social"),
                NavigationDestination(
                    icon: Icon(Icons.telegram), label: "Invite"),
                NavigationDestination(
                    icon: Icon(Icons.person), label: "Profile"),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:helloworld/constants/colors.dart';
import 'events_page.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class UpcomingEvents extends StatefulWidget {
  const UpcomingEvents({Key? key}) : super(key: key);

  @override
  _UpcomingEventsState createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  /*final List<String> imgList = [
    'https://t3.ftcdn.net/jpg/03/13/59/86/360_F_313598699_jyO0OFvaccHWe9YsAY1s8Ycpf0qVPIVz.jpg',
    'https://t3.ftcdn.net/jpg/03/13/59/86/360_F_313598699_jyO0OFvaccHWe9YsAY1s8Ycpf0qVPIVz.jpg',
    'https://t3.ftcdn.net/jpg/03/13/59/86/360_F_313598699_jyO0OFvaccHWe9YsAY1s8Ycpf0qVPIVz.jpg',
  ];*/

  int myCurrentIndex = 0;

  String selectedOrganization = 'JDSAAP'; // Default selected organization

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor, // Set background color here
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0,
        title: Row(
          // Revert children order for original layout (menu button left)
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                print('Menu button clicked!'); // Placeholder action for now
              },
            ),
            const Spacer(), // Add spacer to push content to the right
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/gthr_LogoALT.png'),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 30.0),
            child: Text(
              'Find events for you',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Container(
                  color: tdGreen, // Set background color
                  height: 60.0, // Set desired height (adjust if needed)
                  width: 350.0, // Set desired width (adjust if needed)
                  padding: const EdgeInsets.all(5.0), // Padding inside the box
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on, // Location icon
                        color: Colors.white, // White color for the icon
                        size: 50,
                      ),
                      const SizedBox(
                          width: 8.0), // Add spacing between icon and text
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align left
                        children: [
                          Text(
                            'Your location',
                            style: TextStyle(
                              color: Colors.white, // White color for the text
                            ),
                          ),
                          const SizedBox(
                              height: 4.0), // Add spacing between texts
                          Text(
                            'TIP QC', // Display location string
                            style: TextStyle(
                              color: Colors.white, // White color for the text
                              fontSize: 15, // Adjust font size as needed
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: DropdownButton<String>(
              value: selectedOrganization,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOrganization = newValue!;
                });
              },
              items: <String>['JDSAAP', 'JPCS', 'ACM', 'MCUBE']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              // Use Row for horizontal layout
              children: [
                Text(
                  'Latest events',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(), // Add Spacer to push "Browse full list" to the right
                TextButton(
                  onPressed: () {
                    // Handle click action here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventsPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 25.0), // Adjust padding as needed
                    child: Text(
                      'Browse full list',
                      style: TextStyle(
                        fontSize: 15,
                        color: tdGreen,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              width: 350.0, // Set desired width here
              height: 50.0, // Set desired height here
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search events...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (value) {
                  // Implement search logic here
                  print('Searching for events: $value');
                },
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: CarouselSlider(
              items: imgList
                  .map((e) => Container(
                        child: Center(child: Image.network(e)),
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 200, // Increase the height to a suitable value
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShipmentManagementScreen(),
    );
  }
}

class ShipmentManagementScreen extends StatelessWidget {
  const ShipmentManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SidePanel(),
          ),
          const Expanded(
            flex: 5,
            child: ShipmentDetails(),
          ),
        ],
      ),
    );
  }
}

class SidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Text(
                  'Trustland',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 30.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/Truckmeter.png'), // Replace with your image asset
                  radius:
                      15, // Adjust the radius of the circle avatar as needed
                ),
                SizedBox(
                    width: 8), // Adjust spacing between the image and the text
                Text(
                  'Alina Carter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 55.0, top: 0),
            child: Text(
              'AlinaCarter@gmail.com',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 30),
          ListTile(
            title: const Text('Dashboard'),
            leading: const Icon(Icons.dashboard),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Messages'),
            leading: const Icon(Icons.message),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Routes'),
            leading: const Icon(Icons.route),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Inbox'),
            leading: const Icon(Icons.inbox),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Schedule'),
            leading: const Icon(Icons.schedule),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Payments'),
            leading: const Icon(Icons.payment),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Reports'),
            leading: const Icon(Icons.report),
            onTap: () {},
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(
                left: 0, top: 0), // Adjust left and top padding
            child: Image.asset(
              'assets/Truckmeter.png',
              width: 250, // Adjust width as needed
              height: 70, // Adjust height as needed
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 0, top: 10), // Adjust left and top padding
            child: Image.asset(
              'assets/Details.png',
              width: 250, // Adjust width as needed
              height: 70, // Adjust height as needed
            ),
          ),
        ],
      ),
    );
  }
}

class ShipmentDetails extends StatelessWidget {
  const ShipmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            left: 30, // Adjust the left position as needed
            top: 18, // Adjust the top position as needed
            child: Text(
              'Shipment Management',

              style: TextStyle(fontSize: 28), // Adjust the text size as needed
            ),
          ),
          Positioned(
            left: 440, // Adjust the left position as needed
            top: 25, // Adjust the top position as needed
            child: Container(
              width: 140, // Adjust width to accommodate the icon
              height: 30,
              decoration: BoxDecoration(
                color: Colors.purple, // Set the background color to purple
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Add your onPressed code here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.transparent, // Make button transparent
                  shadowColor: Colors.transparent, // Hide shadow
                ),
                icon: const Icon(Icons.add, color: Colors.white), // Add icon
                label: const Text(
                  'Add Order',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30, // Adjust the left position as needed
            top: 70, // Adjust the top position as needed
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[350], // Set the background color to blue
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed code here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.transparent, // Make button transparent
                  shadowColor: Colors.transparent, // Hide shadow
                ),
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 160, // Adjust the left position as needed
            top: 70, // Adjust the top position as needed
            child: Container(
              width: 110,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[350], // Set the background color to green
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed code here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.transparent, // Make button transparent
                  shadowColor: Colors.transparent, // Hide shadow
                ),
                child: const Text(
                  'Active',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 300, // Adjust the left position as needed
            top: 70, // Adjust the top position as needed
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[350], // Set the background color to orange
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed code here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.transparent, // Make button transparent
                  shadowColor: Colors.transparent, // Hide shadow
                ),
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 320,
            top: 120,
            child: Container(
              width: 260,
              height: 290,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 1),
                        child: Row(
                          children: [
                            const Text(
                              'Shipment Number:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    8), // Adjust spacing between text and image
                            // Add your image here using an Image widget
                            Image.asset(
                              'assets/image.png', // Replace with the path to your image asset
                              width: 120, // Adjust width of the image
                              height: 45, // Adjust height of the image
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 0), // Not necessary if you don't need spacing
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          'UA-14500985',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 16, top: 20), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_outward,
                          color: Colors.green,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Destination',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.purple,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Hektor Container Hotel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the left padding as needed
                    child: Text(
                      'Buyer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 5), // Adjust the left padding as needed
                    child: Text(
                      'Milton Hines',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Fort Worth',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 120,
            child: Container(
              width: 260,
              height: 290,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 1),
                        child: Row(
                          children: [
                            const Text(
                              'Shipment Number:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    8), // Adjust spacing between text and image
                            // Add your image here using an Image widget
                            Image.asset(
                              'assets/image.png', // Replace with the path to your image asset
                              width: 120, // Adjust width of the image
                              height: 45, // Adjust height of the image
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 0), // Not necessary if you don't need spacing
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          'UA-14500985',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 16, top: 20), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_outward,
                          color: Colors.green,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Destination',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.purple,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Hektor Container Hotel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the left padding as needed
                    child: Text(
                      'Buyer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 5), // Adjust the left padding as needed
                    child: Text(
                      'Milton Hines',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Fort Worth',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 320,
            top: 430,
            child: Container(
              width: 260,
              height: 290,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 1),
                        child: Row(
                          children: [
                            const Text(
                              'Shipment Number:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    8), // Adjust spacing between text and image
                            // Add your image here using an Image widget
                            Image.asset(
                              'assets/image.png', // Replace with the path to your image asset
                              width: 120, // Adjust width of the image
                              height: 45, // Adjust height of the image
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 0), // Not necessary if you don't need spacing
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          'UA-14500985',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 16, top: 20), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_outward,
                          color: Colors.green,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Destination',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.purple,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Hektor Container Hotel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the left padding as needed
                    child: Text(
                      'Buyer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 5), // Adjust the left padding as needed
                    child: Text(
                      'Milton Hines',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Fort Worth',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 430,
            child: Container(
              width: 260,
              height: 290,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 1),
                        child: Row(
                          children: [
                            const Text(
                              'Shipment Number:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    8), // Adjust spacing between text and image
                            // Add your image here using an Image widget
                            Image.asset(
                              'assets/image.png', // Replace with the path to your image asset
                              width: 120, // Adjust width of the image
                              height: 45, // Adjust height of the image
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 0), // Not necessary if you don't need spacing
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          'UA-14500985',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 16, top: 20), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_outward,
                          color: Colors.green,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Destination',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the padding as needed
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.purple,
                        ),
                        SizedBox(
                            width:
                                10), // Adjust the spacing between the icon and text as needed
                        Text(
                          'Athens, GRC',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 50, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Hektor Container Hotel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10), // Adjust the left padding as needed
                    child: Text(
                      'Buyer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 5), // Adjust the left padding as needed
                    child: Text(
                      'Milton Hines',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 1), // Adjust the left padding as needed
                    child: Text(
                      'Fort Worth',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 610,
            top: 0,
            child: Container(
              width: 700,
              height: 730,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Your existing shipment details content goes here
                ],
              ),
            ),
          ),
          const Positioned(
            left: 630,
            top: 15,
            child: Text(
              "UA-145009BS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Positioned(
            left: 630,
            top: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "Load Capacity",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ],
                ),
                // Add spacing below the text
                Padding(
                  padding: const EdgeInsets.only(left: 1, top: 5),
                  child: Image.asset(
                    'assets/Truck.png',
                    width: 600,
                    height: 230,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Positioned(
            left: 790,
            top: 18,
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 16,
                ),
                SizedBox(
                    width: 4), // Adjust spacing between the icon and the text
                Text(
                  " on way",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Positioned(
            left: 630,
            top: 465,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Route map",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 5),
                  child: Image.asset(
                    'assets/map.png',
                    width: 600,
                    height: 220,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 1150,
            top: 95,
            child: ElevatedButton(
              onPressed: () {
                // Handle button action
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                backgroundColor: Colors.purple,
              ),
              child: const Text(
                "Documents",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            left: 1020,
            top: 20,
            child: ElevatedButton.icon(
              onPressed: () {
                // Handle phone action
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.white,
              ),
              icon: const Icon(Icons.phone, color: Colors.black),
              label: const Text(
                "Phone",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Positioned(
            left: 1150,
            top: 20,
            child: ElevatedButton.icon(
              onPressed: () {
                // Handle email action
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.white,
              ),
              icon: const Icon(Icons.email, color: Colors.black),
              label: const Text(
                "Email",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const Positioned(
            left: 630,
            top: 60,
            child: Row(
              children: [
                Text(
                  "Information",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(width: 15), // Add spacing between texts
                Text(
                  "Vehicle info",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.purple, // Change the color to purple
                  ),
                ),
                SizedBox(width: 15), // Add spacing between texts
                Text(
                  "Company",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(width: 15), // Add spacing between texts
                Text(
                  "Billing",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Positioned(
            left: 630,
            top: 67,
            child: Row(
              children: [
                Image.asset(
                  'assets/Truck1.png',
                  width: 70,
                  height: 90,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/Truck4.png',
                  width: 70,
                  height: 90,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/Truck3.png',
                  width: 70,
                  height: 90,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/Truck4.png',
                  width: 70,
                  height: 90,
                ),
              ],
            ),
          ),
          Positioned(
            left: 630,
            top: 420,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.white, // Example color
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Truck",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "iveco 80E180",
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold, // Set font weight to bold
                          fontSize: 12, // Set font size
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30), // Adjust spacing between containers
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.white, // Example color
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                          // Set font weight to bold
                          fontSize: 12, // Set font size
                        ),
                      ),
                      Text(
                        "7340 Kg",
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold, // Set font weight to bold
                          fontSize: 12, // Set font size
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30), // Adjust spacing between containers
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.white, // Example color
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("pallets"),
                      Text(
                        "13/20",
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold, // Set font weight to bold
                          fontSize: 12, // Set font size
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30), // Adjust spacing between containers
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.white, // Example color
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Score",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "65% / 35%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30), // Adjust spacing between containers
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.white,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Volume",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "18 m^3",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

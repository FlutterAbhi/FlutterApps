import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget{
  const NotificationScreen({super.key});
  @override
  State<StatefulWidget> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State {
  final List<Map<String, dynamic>> notifications = [
    {
      'date': 'Today',
      'items': [
        {'icon': Icons.shopping_cart, 'text': 'Your checkout is successful, product is on the way'},
        {'icon': Icons.check_circle, 'text': 'Appointment request accepted'},
      ],
    },
    {
      'date': '25 September',
      'items': [
        {'icon': Icons.shopping_cart, 'text': 'Your checkout is successful, product is on the way'},
        {'icon': Icons.check_circle, 'text': 'Appointment request accepted'},
        {'icon': Icons.favorite, 'text': 'Vaccinate your pet timely'},
      ],
    },
    {
      'date': '15 September',
      'items': [
        {'icon': Icons.shopping_cart, 'text': 'Your checkout is successful, product is on the way'},
        {'icon': Icons.check_circle, 'text': 'Appointment request accepted'},
        {'icon': Icons.favorite, 'text': 'Vaccinate your pet timely'},
      ],
    },
    {
      'date': '21 October',
      'items': [
        {'icon': Icons.shopping_cart, 'text': 'Your checkout is successful, product is on the way'},
        {'icon': Icons.check_circle, 'text': 'Appointment request accepted'},
        {'icon': Icons.favorite, 'text': 'Vaccinate your pet timely'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () {},
        ),
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationSection(
            date: notifications[index]['date'],
            items: notifications[index]['items'],
          );
        },
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  final String date;
  final List<Map<String, dynamic>> items;
  

  NotificationSection({required this.date, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        ...items.map((item) => NotificationItem(icon: item['icon'], text: item['text'])).toList(),
        SizedBox(height: 20),
      ],
    );
  }
}

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String text;

  NotificationItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

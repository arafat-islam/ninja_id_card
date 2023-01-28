import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Arafat\'s ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/arafat.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey[200], letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Arafat Islam',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  letterSpacing: 2.0),
            ),
            const SizedBox(height: 30.0),
            Text(
              'Department Name',
              style: TextStyle(color: Colors.grey[200], letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'CSE',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 25.0,
                  letterSpacing: 2.0),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Ninja Level',
              style: TextStyle(
                color: Colors.grey[200],
              ),
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 25.0,
                  letterSpacing: 2.0),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'arafat.cse5.bu@gmail.com',
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text('Show More')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

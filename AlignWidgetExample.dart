import 'package:flutter/material.dart';

class AllWidgetsExample extends StatefulWidget {
  @override
  _AllWidgetsExampleState createState() => _AllWidgetsExampleState();
}

class _AllWidgetsExampleState extends State<AllWidgetsExample> {
  bool isSwitched = false;
  bool isChecked = false;
  double sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Widgets Example'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // InkWell Example
          InkWell(
            onTap: () => print("InkWell Tapped"),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  'InkWell Button',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),

          // GestureDetector Example
          GestureDetector(
            onTap: () => print("GestureDetector Tapped"),
            onDoubleTap: () => print("GestureDetector Double Tapped"),
            onLongPress: () => print("GestureDetector Long Pressed"),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  'GestureDetector Button',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),

          // InkResponse Example
          InkResponse(
            onTap: () => print("InkResponse Tapped"),
            highlightShape: BoxShape.circle,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.favorite, color: Colors.white, size: 32),
            ),
          ),
          SizedBox(height: 16),

          // ElevatedButton Example
          ElevatedButton(
            onPressed: () => print("ElevatedButton Pressed"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.purple,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text('Elevated Button'),
          ),
          SizedBox(height: 16),

          // RawMaterialButton Example
          RawMaterialButton(
            onPressed: () => print("RawMaterialButton Pressed"),
            fillColor: Colors.red,
            shape: CircleBorder(),
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.thumb_up, color: Colors.white, size: 32),
          ),
          SizedBox(height: 16),

          // Clickable Card Example
          InkWell(
            onTap: () => print("Card Tapped"),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text("Clickable Card"),
              ),
            ),
          ),
          SizedBox(height: 16),

          // ListTile Example
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Tap me!'),
            onTap: () {
              print("ListTile Tapped");
            },
          ),
          SizedBox(height: 16),

          // Switch Example
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print("Switch is $isSwitched");
              });
            },
          ),
          SizedBox(height: 16),

          // Checkbox Example
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
                print("Checkbox is $isChecked");
              });
            },
          ),
          SizedBox(height: 16),

          // Dismissible Example
          Dismissible(
            key: UniqueKey(),
            onDismissed: (direction) {
              print("Item dismissed");
            },
            background: Container(color: Colors.red),
            child: ListTile(
              title: Text('Swipe me!'),
            ),
          ),
          SizedBox(height: 16),

          // Draggable and DragTarget Example
          Draggable<String>(
            data: "Dragged Item",
            feedback: Material(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Text("Dragging"),
              ),
            ),
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              child: Text("Drag me"),
            ),
          ),
          DragTarget<String>(
            builder: (context, candidateData, rejectedData) {
              return Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Center(child: Text("Drop here")),
              );
            },
            onAccept: (data) {
              print("Item Dropped: $data");
            },
          ),
          SizedBox(height: 16),

          // PopupMenuButton Example
          PopupMenuButton<String>(
            onSelected: (value) {
              print("Selected: $value");
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: "Option 1",
                child: Text("Option 1"),
              ),
              PopupMenuItem(
                value: "Option 2",
                child: Text("Option 2"),
              ),
            ],
          ),
          SizedBox(height: 16),

          // FloatingActionButton Example
          FloatingActionButton(
            onPressed: () {
              print("FAB Pressed");
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),

          // Slider Example
          Slider(
            value: sliderValue,
            min: 0,
            max: 100,
            onChanged: (newValue) {
              setState(() {
                sliderValue = newValue;
              });
              print("Slider Value: $sliderValue");
            },
          ),
        ],
      ),
    );
  }
}

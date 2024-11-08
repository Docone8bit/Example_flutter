import 'package:flutter/material.dart';

class AllWidgetsDemo extends StatefulWidget {
  @override
  _AllWidgetsDemoState createState() => _AllWidgetsDemoState();
}

class _AllWidgetsDemoState extends State<AllWidgetsDemo> {
  bool isSwitched = false;
  bool isChecked = false;
  double sliderValue = 50.0;
  bool isExpanded = false;
  bool isVisible = true;

  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Widgets Demo'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // ExpansionTile
          ExpansionTile(
            title: Text('Expansion Tile'),
            subtitle: Text('Tap to expand'),
            children: [
              ListTile(title: Text('Child 1')),
              ListTile(title: Text('Child 2')),
            ],
          ),
          SizedBox(height: 16),

          // DatePicker Button
          ElevatedButton(
            onPressed: () async {
              DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              print("Selected Date: $selectedDate");
            },
            child: Text('Pick a Date'),
          ),
          SizedBox(height: 16),

          // TimePicker Button
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? selectedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              print("Selected Time: $selectedTime");
            },
            child: Text('Pick a Time'),
          ),
          SizedBox(height: 16),

          // SnackBar Button
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("This is a SnackBar"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: Text('Show SnackBar'),
          ),
          SizedBox(height: 16),

          // AlertDialog Button
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Alert'),
                    content: Text('This is an alert dialog'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show AlertDialog'),
          ),
          SizedBox(height: 16),

          // BottomSheet Button
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text('Share'),
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTile(
                          leading: Icon(Icons.link),
                          title: Text('Get link'),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text('Show BottomSheet'),
          ),
          SizedBox(height: 16),

          // Tooltip Example
          Tooltip(
            message: "This is a tooltip",
            child: Icon(Icons.info, size: 50),
          ),
          SizedBox(height: 16),

          // Stepper Example
          Stepper(
            currentStep: 0,
            onStepTapped: (step) => print("Tapped step $step"),
            steps: [
              Step(
                title: Text("Step 1"),
                content: Text("Information for step 1"),
              ),
              Step(
                title: Text("Step 2"),
                content: Text("Information for step 2"),
              ),
            ],
          ),
          SizedBox(height: 16),

          // AnimatedContainer
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              color: Colors.blue,
              width: isExpanded ? 200 : 100,
              height: 100,
              child: Center(child: Text("Tap to Expand")),
            ),
          ),
          SizedBox(height: 16),

          // AnimatedOpacity
          ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Text('Toggle Opacity'),
          ),
          AnimatedOpacity(
            opacity: isVisible ? 1.0 : 0.0,
            duration: Duration(seconds: 1),
            child: Text("Fading Text"),
          ),
          SizedBox(height: 16),

          // ReorderableListView Example
          Text('Reorderable List View'),
          ReorderableListView(
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (newIndex > oldIndex) newIndex -= 1;
                final item = items.removeAt(oldIndex);
                items.insert(newIndex, item);
              });
            },
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(items.length, (index) {
              return ListTile(
                key: ValueKey(items[index]),
                title: Text(items[index]),
              );
            }),
          ),
        ],
      ),
    );
  }
}

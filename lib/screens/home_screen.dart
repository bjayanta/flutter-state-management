import 'package:flutter/material.dart';
import 'package:flutter_state_management/gstore/global_state.dart';
import './add_data_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getData = Provider.of<GState>(context).data;

    return Scaffold(
      appBar: AppBar(
        title: Text("G Store"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AddDataScreen()),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: getData.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("${getData[index]}"),
              ),
            );
          },
        ),
      ),
    );
  }
}

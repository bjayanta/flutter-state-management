import 'package:flutter/material.dart';
import 'package:flutter_state_management/gstore/global_state.dart';
import 'package:provider/provider.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({Key? key}) : super(key: key);

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  final _textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add data"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: _textCtrl,
              decoration: InputDecoration(
                hintText: "Text only ...",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (_textCtrl.text.length <= 0) {
                  return;
                }

                Provider.of<GState>(context, listen: false).addData(
                  _textCtrl.text,
                );

                Navigator.of(context).pop();
              },
              child: Text("Create"),
              style: ElevatedButton.styleFrom(),
            ),
          ],
        ),
      ),
    );
  }
}

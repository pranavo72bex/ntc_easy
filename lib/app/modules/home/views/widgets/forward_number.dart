import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ForwardNumber extends StatelessWidget {
  TextEditingController ForwardNumberEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          controller: ForwardNumberEditingController,
          decoration: InputDecoration(
            labelText: "Forward Phone Number",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onSaved: (phoneNumber) {
            ForwardNumberEditingController.text = phoneNumber!;
          },
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(
              "**21*98xxxxxxxx*${ForwardNumberEditingController.text}#",
            );
          },
          child: Text("Forward"),
        )
      ],
    );
  }
}

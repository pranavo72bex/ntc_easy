import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/state_manager.dart';
import 'package:ntcservicecode/app/modules/home/controllers/home_controller.dart';

// ignore: must_be_immutable
class ForwardNumber extends GetView<HomeController> {
  TextEditingController ForwardNumberEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
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
            validator: (value) {
              return controller.validatephone(value!);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              controller.checkvalidation();
              if (controller.formKey.currentState!.validate()) {
                await FlutterPhoneDirectCaller.callNumber(
                  "**21*98xxxxxxxx*${ForwardNumberEditingController.text}#",
                );
              }
            },
            child: Text("Forward"),
          )
        ],
      ),
    );
  }
}

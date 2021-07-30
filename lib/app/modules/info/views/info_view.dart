import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'package:get/get.dart';
import 'package:ntcservicecode/app/commonwidgets/custom_button.dart';
import 'package:ntcservicecode/const/const_padding.dart';

import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inquiry & Complain'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                CustomButton(
                  onpressed: () async {
                    String number = "198";
                    await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  title: 'Telephone Repair',
                  icon: Icons.phone,
                ),
                CustomButton(
                  onpressed: () async {
                    String number = "198";
                    await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  title: 'FTTH Repair',
                  icon: Icons.cable_outlined,
                ),
                CustomButton(
                  onpressed: () async {
                    String number = "197";
                    await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  title: 'Number Inquiry',
                  icon: Icons.contact_page_outlined,
                ),
                CustomButton(
                  onpressed: () async {
                    String number = "1498";
                    await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  title: 'Customer care Support',
                  icon: Icons.supervisor_account,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

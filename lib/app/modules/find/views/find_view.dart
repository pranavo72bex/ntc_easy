import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntcservicecode/app/commonwidgets/custom_button.dart';
import 'package:ntcservicecode/app/modules/find/views/widgets/adsl_balance.dart';
import 'package:ntcservicecode/app/modules/find/views/widgets/bill_inquiry.dart';
import 'package:ntcservicecode/app/modules/find/views/widgets/ftth_repair.dart';
import 'package:ntcservicecode/const/const_padding.dart';

import '../controllers/find_controller.dart';

class FindView extends GetView<FindController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landline, ADSL, FTTH'),
        centerTitle: true,
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
                    Get.defaultDialog(
                      title: '',
                      content: BillInquiry(),
                    );
                  },
                  title: 'Bill Inquiry',
                  icon: Icons.phone,
                ),
                CustomButton(
                  onpressed: () async {
                    Get.defaultDialog(
                      title: '',
                      content: FTTHRepair(),
                    );
                  },
                  title: 'FTTH Repair',
                  icon: Icons.cable_outlined,
                ),
                CustomButton(
                  onpressed: () async {
                    Get.defaultDialog(
                      title: '',
                      content: ADSLBalance(),
                    );
                  },
                  title: 'ADSL Balance Inquiry',
                  icon: Icons.attach_money_outlined,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

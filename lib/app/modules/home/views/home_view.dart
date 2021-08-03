import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:ntcservicecode/app/modules/home/views/widgets/balance_trasfer.dart';
import 'package:ntcservicecode/app/commonwidgets/custom_button.dart';
import 'package:ntcservicecode/app/modules/home/views/widgets/forward_number.dart';
import 'package:ntcservicecode/const/const_padding.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_sms/flutter_sms.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NTC Easy',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mobile Service",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                shrinkWrap: true,
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  CustomButton(
                    onpressed: () async {
                      String number = "*1415#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Know Latest \nOffers',
                    icon: Icons.star_border_outlined,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "*400#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                      print("object");
                    },
                    title: 'Check Balance',
                    icon: Icons.attach_money_outlined,
                  ),
                  CustomButton(
                    onpressed: () async {
                      Get.defaultDialog(
                        title: '',
                        content: BalanceTrasfer(),
                      );
                    },
                    title: 'Balance Trasfer',
                    icon: Icons.send,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "*9#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Check Your Mobile Number',
                    icon: Icons.contact_page,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "*922#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Check Your SIM \nOwner',
                    icon: Icons.supervised_user_circle_sharp,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "Call Waiting Activate",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          String number = "*43#";
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                      );
                    },
                    title: 'Call Waiting \nActivate',
                    icon: Icons.timer,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "Call Waiting Cancel",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          String number = "#43#";
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                      );
                    },
                    title: 'Call Waiting \nCancel',
                    icon: Icons.timer_off,
                  ),
                  CustomButton(
                    onpressed: () async {
                      Get.defaultDialog(
                        title: "Security Code",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          _sendSMS("SCODE", "1415");
                        },
                      );
                    },
                    title: 'Security Code',
                    icon: Icons.security,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "ISD Activate",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          String number = "#331*0000#";
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                      );
                    },
                    title: 'ISD Activate',
                    icon: Icons.public,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "ISD Deactivate",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          String number = "*331*0000#";
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                      );
                    },
                    title: 'ISD Deactivate',
                    icon: Icons.public_off,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "Ring Tone Activate",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          _sendSMS("SUB", "1455");
                        },
                      );
                      // _sendSMS("SUB", "1455");
                    },
                    title: 'CRBT (Ring Tone)',
                    icon: Icons.music_note,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "Ring Tone Deactivate",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          _sendSMS("Unsub", "1455");
                        },
                      );
                    },
                    title: ' Stop CRBT \n(Ring Tone)',
                    icon: Icons.music_off_outlined,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "NTC Loan",
                        middleText: "",
                        textCancel: "Cancel",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          _sendSMS("START", "1477");
                        },
                      );
                    },
                    title: 'NTC Loan',
                    icon: Icons.mobile_friendly,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "NTC load Deactivate",
                        textCancel: "Cancel",
                        middleText: "",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          _sendSMS("STOP", "1477");
                        },
                      );
                    },
                    title: 'NTC load \nDeactivate',
                    icon: Icons.mobile_off_outlined,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "Missed Call Alert",
                        textCancel: "Cancel",
                        middleText: "",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          String number = "*1400*1#";
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                      );
                    },
                    title: 'Missed Call \nAlert',
                    icon: Icons.phone_missed_outlined,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "Missed call Deactivate",
                        textCancel: "Cancel",
                        middleText: "",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          String number = "*1400*2#";
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                      );
                    },
                    title: 'Missed Call \nDeactivate',
                    icon: Icons.perm_phone_msg_outlined,
                  ),
                  CustomButton(
                    onpressed: () async {
                      Get.defaultDialog(
                        title: '',
                        content: ForwardNumber(),
                      );
                    },
                    title: 'Call Forward \nActivate',
                    icon: Icons.call_split_outlined,
                  ),
                  CustomButton(
                    onpressed: () {
                      Get.defaultDialog(
                        title: "Call Forward Deactivate",
                        textCancel: "Cancel",
                        middleText: "",
                        textConfirm: "Ok",
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () async {
                          String number = "##002#";
                          await FlutterPhoneDirectCaller.callNumber(number);
                        },
                      );
                    },
                    title: 'Call Forward \nCancel',
                    icon: Icons.call_merge_sharp,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _sendSMS(String message, recipents) async {
    String _result =
        await sendSMS(message: message, recipients: recipents).catchError(
      (onError) {
        print(onError);
      },
    );
    print(_result);
  }
}

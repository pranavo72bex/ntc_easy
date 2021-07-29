import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:ntcservicecode/app/modules/home/views/widgets/balance_trasfer.dart';
import 'package:ntcservicecode/app/modules/home/views/widgets/custom_button.dart';
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
                    icon: Icons.local_offer_outlined,
                  ),
                  CustomButton(
                    onpressed: () async {
                      Get.defaultDialog(
                        title: '',
                        content: BalanceTrasfer(),
                      );
                    },
                    title: 'Balance Trasfer',
                    icon: Icons.attach_money_sharp,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "*9#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Check Your Mobile Number',
                    icon: Icons.phone,
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
                    onpressed: () async {
                      String number = "*43#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Call Waiting \nActivate',
                    icon: Icons.timer_off,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "#43#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Call Waiting \nCancel',
                    icon: Icons.timer,
                  ),
                  CustomButton(
                    onpressed: () async {
                      _sendSMS("SCODE", "1415");
                    },
                    title: 'Security Code',
                    icon: Icons.security,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "#331*0000#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'ISD Activate',
                    icon: Icons.public,
                  ),
                  CustomButton(
                      onpressed: () async {
                        String number = "*331*0000#";
                        await FlutterPhoneDirectCaller.callNumber(number);
                      },
                      title: 'ISD Deactivate',
                      icon: Icons.public_off),
                  CustomButton(
                    onpressed: () async {
                      _sendSMS("SUB", "1455");
                    },
                    title: 'CRBT (Ring Tone)',
                    icon: Icons.music_note,
                  ),
                  CustomButton(
                    onpressed: () async {
                      _sendSMS("Unsub", "1455");
                    },
                    title: ' Stop CRBT \n(Ring Tone)',
                    icon: Icons.music_note,
                  ),
                  CustomButton(
                    onpressed: () async {
                      _sendSMS("START", "1477");
                    },
                    title: 'NTC Loan',
                    icon: Icons.mobile_friendly,
                  ),
                  CustomButton(
                    onpressed: () async {
                      _sendSMS("STOP", "1477");
                    },
                    title: 'NTC load \nDeactivate',
                    icon: Icons.mobile_friendly,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "*1400*1#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Missed Call \nAlert',
                    icon: Icons.call_missed,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "*1400*2#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Missed Call \nDeactivate',
                    icon: Icons.call,
                  ),
                  CustomButton(
                    onpressed: () async {
                      String number = "1415";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Friend & Family \nActivate',
                    icon: Icons.call,
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
                    onpressed: () async {
                      String number = "##002#";
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                    title: 'Call Forward \nCancel',
                    icon: Icons.call_split_outlined,
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

// ignore: must_be_immutable

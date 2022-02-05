import 'package:e_voting_app/lists.dart';
import 'package:e_voting_app/screens/organization_screen/progress_indicator.dart';
import 'package:e_voting_app/textfields.dart';
import 'package:flutter/material.dart';
import '../../routes.dart';
import 'voting_status.dart';

class AddVotingScreen extends StatefulWidget {
  @override
  State<AddVotingScreen> createState() => _AddVotingScreenState();
}

class _AddVotingScreenState extends State<AddVotingScreen> {
  //const AddVotingScreen({Key? key}) : super(key: key);
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String? purposeOfVoting;
  int? noOfVotes;
  TextEditingController? controller1 = TextEditingController();
  TextEditingController? controller2 = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked_s = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });

    if (picked_s != null && picked_s != selectedTime) {
      setState(() {
        selectedTime = picked_s;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff1a67d6),
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        //  backgroundColor: const Color(0xff1a67d6),
        backgroundColor: const Color(0xff3D0000),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          //  physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.,
              children: [
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextField(
                    controller: controller1,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Purpose of Voting',
                      labelStyle:
                          TextStyle(color: Colors.white.withOpacity(0.8)),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.all(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextField(
                    controller: controller2,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Number of Votes',
                      labelStyle:
                          TextStyle(color: Colors.white.withOpacity(0.8)),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.all(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  child: const Text('Date of Starting'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff950101)),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.only(left: 128, right: 128),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    _selectTime(context);
                  },
                  child: Text('Time of Starting'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff950101)),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.only(left: 128, right: 128),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Lists.progressIndicator.add(
                      ProgressIndicatorWidget(
                        purposeOfVote: controller1?.text ?? '',
                        noOfVotes: controller2?.text ?? '0',
                        currentTime: DateTime(
                            selectedDate.year,
                            selectedDate.month,
                            selectedDate.day,
                            selectedTime.hour,
                            selectedTime.minute),
                      ),
                    );
                    Navigator.pushReplacementNamed(
                        context, Routes.votingStatus);
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      (Color(0xff950101)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

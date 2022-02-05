import 'dart:async';

import 'package:e_voting_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  const ProgressIndicatorWidget(
      {Key? key, this.purposeOfVote, this.noOfVotes, this.currentTime})
      : super(key: key);
  final String? purposeOfVote;
  final String? noOfVotes;
  final DateTime? currentTime;

  @override
  State<ProgressIndicatorWidget> createState() =>
      _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget> {
  double valueOfBar() {
    int l = widget.noOfVotes!.length;
    double v = double.parse(widget.noOfVotes!);
    for (int i = 0; i < l; i++) {
      v = v / 10;
    }
    return v;
  }

  // Timer? _timer;
  // int? _start;
  //
  // int startTimer() {
  //   int _start = widget.currentTime!.minute;
  //   const oneSec = const Duration(seconds: 1);
  //   _timer = new Timer.periodic(
  //     oneSec,
  //     (Timer timer) {
  //       if (_start == 0) {
  //         setState(() {
  //           timer.cancel();
  //         });
  //       } else {
  //         setState(() {
  //           _start--;
  //         });
  //       }
  //     },
  //   );
  //   return _start;
  // }

  // @override
  // void dispose() {
  //   _timer!.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.purposeOfVote!,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        LinearProgressIndicator(
          minHeight: 16,
          value: 0.2,
          backgroundColor: Colors.grey.shade600, //Colors.grey.shade300,
          color: Color(0xffFF0000), //Colors.blue.shade500,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'Time Left: ',
                  style: TextStyle(color: Colors.white),
                ),
                CountdownTimer(
                  endTime: DateTime.parse(widget.currentTime.toString())
                      .millisecondsSinceEpoch,
                  textStyle: TextStyle(color: Colors.blue.shade50),
                  endWidget: Center(
                    child: Text(
                      'Time is Over',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                if (widget.currentTime!.isBefore(DateTime.now()))
                  Navigator.of(context).pushNamed(Routes.completeVotingStatus);
                else
                  Navigator.of(context).pushNamed(Routes.inProcessVotingStatus);
              },
              child: const Text(
                'Show Detail',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color(0xff950101)), //Colors.white),
                minimumSize: MaterialStateProperty.all(Size(0, 8)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

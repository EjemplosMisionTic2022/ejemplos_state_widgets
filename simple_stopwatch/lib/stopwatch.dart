import 'dart:async';

import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  @override
  _StopWatchState createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  late Timer timer;
  int milliseconds = 0;
  int seconds = 0;
  void _onTick(Timer time) {
    setState(() {
      milliseconds += 100;
    });
  }

  void _start() {
    print('start');
    timer = Timer.periodic(Duration(milliseconds: 100), _onTick);
  }

  void _stop() {
    timer.cancel();
  }

  void _clear() {
    timer.cancel();
    setState(() {
      milliseconds = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('StopWatch'),
            Text('${milliseconds}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () => _start(),
                  icon: Icon(Icons.play_arrow),
                  label: Text('Play'),
                ),
                ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    icon: Icon(Icons.stop),
                    onPressed: () => _stop(),
                    label: Text('Stop')),
                ElevatedButton.icon(
                    icon: Icon(Icons.clear),
                    onPressed: () => _clear(),
                    label: Text('Clear')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

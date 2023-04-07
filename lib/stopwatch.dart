import 'package:flutter/material.dart';

class StopwatchApp extends StatefulWidget {
  const StopwatchApp({Key? key});
  @override
  _StopwatchAppState createState() => _StopwatchAppState();
}

class _StopwatchAppState extends State<StopwatchApp> {
  Stopwatch _stopwatch = Stopwatch();
  bool _isRunning = false;

  @override
  void dispose() {
    _stopwatch.stop();
    super.dispose();
  }

  void _startStopwatch() {
    setState(() {
      _isRunning = true;
      _stopwatch.start();
    });
  }

  void _stopStopwatch() {
    setState(() {
      _isRunning = false;
      _stopwatch.stop();
    });
  }

  void _resetStopwatch() {
    setState(() {
      _isRunning = false;
      _stopwatch.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${_stopwatch.elapsedMilliseconds ~/ 1000}.${(_stopwatch.elapsedMilliseconds % 1000) ~/ 100}',
              style: TextStyle(fontSize: 80.0),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: !_isRunning ? _startStopwatch : null,
                  child: Text('Start'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _isRunning ? _stopStopwatch : null,
                  child: Text('Stop'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _resetStopwatch,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: StopwatchApp()));

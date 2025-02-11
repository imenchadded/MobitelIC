import 'dart:async'; // Make sure to import dart:async for Timer
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String _batteryLevel = 'Unknown'; // Uncomment if using battery info
  String _networkStatus = 'Unknown';
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    // _getBatteryLevel(); // Uncomment if using battery info
    _getNetworkStatus();
    _updateTime();
    // Update time every second
    Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());
  }

  // Future<void> _getBatteryLevel() async {
  //   final batteryInfo = await BatteryInfo().androidBatteryInfo;
  //   setState(() {
  //     _batteryLevel = '${batteryInfo.batteryLevel}%';
  //   });
  // }

  Future<void> _getNetworkStatus() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    setState(() {
      if (connectivityResult == ConnectivityResult.mobile) {
        _networkStatus = 'Mobile';
      } else if (connectivityResult == ConnectivityResult.wifi) {
        _networkStatus = 'WiFi';
      } else {
        _networkStatus = 'No Connection';
      }
    });
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateTime.now().toLocal().toString().split(' ')[1].split('.')[0]; // HH:MM:SS
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Time: $_currentTime', style: TextStyle(color: Colors.white)),
          Text('Network: $_networkStatus', style: TextStyle(color: Colors.white)),
          Text('Battery: $_batteryLevel', style: TextStyle(color: Colors.white)), // Uncomment if using battery info
        ],
      ),
    );
  }
}
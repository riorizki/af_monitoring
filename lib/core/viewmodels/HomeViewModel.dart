import 'package:af_monitoring/core/services/mqttService.dart';
import 'package:af_monitoring/core/viewmodels/baseModel.dart';
import 'package:af_monitoring/locator.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends BaseModel {
  final MqttService _mqttService = locator<MqttService>();

  Color colorFw01 = Colors.grey;
  Color colorFw02 = Colors.grey;

  Color colorRw01 = Colors.grey;
  Color colorRw02 = Colors.grey;

  Color colorIr01 = Colors.grey;
  Color colorIr02 = Colors.grey;

  Color colorLp01 = Colors.grey;
  Color colorLp02 = Colors.grey;

  void initialiseClass() {
    connectMqtt();
  }

  void connectMqtt() async {
    await _mqttService.connectMqttClient();

    _mqttService.client.updates.listen((dynamic c) {
      final MqttPublishMessage recMess = c[0].payload;
      final pt =
          MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

      if (pt.contains('fw_')) {
        var msg = pt.split('_');
        if (msg[1] == '01') {
          if (msg[2] == 'on') {
            colorFw01 = Colors.lightGreen;
          } else if (msg[2] == 'off') {
            colorFw01 = Colors.grey;
          }
        } else if (msg[1] == '02') {
          if (msg[2] == 'on') {
            colorFw02 = Colors.green;
          } else if (msg[2] == 'off') {
            colorFw02 = Colors.grey;
          }
        }
      } else if (pt.contains('rw_')) {
        var msg = pt.split('_');
        if (msg[1] == '01') {
          if (msg[2] == 'on') {
            colorRw01 = Colors.green;
          } else if (msg[2] == 'off') {
            colorRw01 = Colors.grey;
          }
        } else if (msg[1] == '02') {
          if (msg[2] == 'on') {
            colorRw02 = Colors.green;
          } else if (msg[2] == 'off') {
            colorRw02 = Colors.grey;
          }
        }
      } else if (pt.contains('ir_')) {
        var msg = pt.split('_');
        if (msg[1] == '01') {
          if (msg[2] == 'on') {
            colorIr01 = Colors.green;
          } else if (msg[2] == 'off') {
            colorIr01 = Colors.grey;
          }
        } else if (msg[1] == '02') {
          if (msg[2] == 'on') {
            colorIr02 = Colors.green;
          } else if (msg[2] == 'off') {
            colorIr02 = Colors.grey;
          }
        }
      } else if (pt.contains('lp_')) {
        var msg = pt.split('_');
        if (msg[1] == '01') {
          if (msg[2] == 'on') {
            colorLp01 = Colors.green;
          } else if (msg[2] == 'off') {
            colorLp01 = Colors.grey;
          }
        } else if (msg[1] == '02') {
          if (msg[2] == 'on') {
            colorLp02 = Colors.green;
          } else if (msg[2] == 'off') {
            colorLp02 = Colors.grey;
          }
        }
      }

      print(
          'MqttService::Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
      print('');

      setBusy(true);
    });
  }
}

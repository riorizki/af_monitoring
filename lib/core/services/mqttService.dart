import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class MqttService {
  MqttServerClient client;
  String broker = 'ec2-54-255-192-5.ap-southeast-1.compute.amazonaws.com';
  String clientIdentifier;

  MqttService() {
    clientIdentifier = "AF-Controller-${DateTime.now().toString()}";
    setupMqttClient();
  }

  Future<void> connectMqttClient() async {
    try {
      print('MqttService::MQTT client connecting....');
      await client.connect();
    } catch (e) {
      print('MqttService::client exception - $e');
      client.disconnect();
    }

    if (client.connectionStatus.state == MqttConnectionState.connected) {
      print('MqttService::MQTT client connected');
    } else {
      print(
          'MqttService::ERROR MQTT client connection failed - disconnecting, status is ${client.connectionStatus}');
      client.disconnect();
    }
  }

  void setupMqttClient() {
    client = MqttServerClient.withPort(broker, clientIdentifier, 5883);
    client.logging(on: false);
    client.onDisconnected = _onDisconnected;
    client.onConnected = _onConnected;
    client.onSubscribed = _onSubscribed;
  }

  void publishMessage(String topic, String messages) {
    final builder = MqttClientPayloadBuilder();
    builder.addString('$messages');
    client.publishMessage(topic, MqttQos.atMostOnce, builder.payload);
    print('MqttService::Published Messages');
  }

  void _onDisconnected() {
    print('MqttService::OnDisconnected client callback - Client disconnection');
    if (client.connectionStatus.returnCode == MqttConnectReturnCode.solicited) {
      print(
          'MqttService::OnDisconnected callback is solicited, this is correct');
    }
  }

  void _onConnected() {
    print(
        'MqttService::OnConnected client callback - Client connection was sucessful');
    client.subscribe('afarming', MqttQos.atMostOnce);
  }

  void _onSubscribed(String topic) {
    print('MqttService::Subscription confirmed for topic $topic');
  }
}

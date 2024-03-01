import 'package:ip_check/ip_check.dart' as ip_check;

void main(List<String> arguments) async {
  final ip =await ip_check.getIp();
  print(ip);
}


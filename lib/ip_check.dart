// https://api.ipify.org
import 'models/classeip';
import 'dart:convert';
// Importa il modulo http da package:http/http.dart e lo rinomina come http.
import "package:http/http.dart" as http;

// Definisce una costante stringa contenente l'URL per l'API ipify.org.
const stringUrl= "https://ipapi.co/json";

// Definisce una funzione chiamata getIp che restituisce una stringa.
Future<Ip> getIp() async {
  // Converte la costante stringUrl in un oggetto Uri.
  final url = Uri.parse(stringUrl);
  
  // Effettua una richiesta GET all'URL fornito.
  final res=await http.get(url);

  final Map<String, dynamic> data= json.decode(res.body);

  return Ip(ip: data['ip'], region: data['region'],postal: data['postal'],city: data['city']);
}

import 'package:sunat_app/data/model/address.dart';

class Client {
  Client({
    required this.tipoDoc,
    required this.numDoc,
    required this.rznSocial,
    required this.address,
  });

  String tipoDoc;
  int numDoc;
  String rznSocial;
  Address address;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        tipoDoc: json["tipoDoc"],
        numDoc: json["numDoc"],
        rznSocial: json["rznSocial"],
        address: Address.fromJson(json["address"]),
      );

  Map<String, dynamic> toJson() => {
        "tipoDoc": tipoDoc,
        "numDoc": numDoc,
        "rznSocial": rznSocial,
        "address": address.toJson(),
      };
}

import 'package:sunat_app/data/model/address.dart';

class Company {
  Company({
    required this.ruc,
    required this.razonSocial,
    required this.nombreComercial,
    required this.address,
  });

  int ruc;
  String razonSocial;
  String nombreComercial;
  Address address;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        ruc: json["ruc"],
        razonSocial: json["razonSocial"],
        nombreComercial: json["nombreComercial"],
        address: Address.fromJson(json["address"]),
      );

  Map<String, dynamic> toJson() => {
        "ruc": ruc,
        "razonSocial": razonSocial,
        "nombreComercial": nombreComercial,
        "address": address.toJson(),
      };
}

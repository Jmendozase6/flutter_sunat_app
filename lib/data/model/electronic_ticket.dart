// To parse this JSON data, do
//
//     final boletaElectronica = boletaElectronicaFromJson(jsonString);

import 'dart:convert';

import 'package:sunat_app/data/model/client.dart';
import 'package:sunat_app/data/model/company.dart';
import 'package:sunat_app/data/model/details.dart';
import 'package:sunat_app/data/model/forma_pago.dart';
import 'package:sunat_app/data/model/legend.dart';

ElectronicTicket boletaElectronicaFromJson(String str) =>
    ElectronicTicket.fromJson(json.decode(str));

String boletaElectronicaToJson(ElectronicTicket data) =>
    json.encode(data.toJson());

class ElectronicTicket {
  ElectronicTicket({
    required this.ublVersion,
    required this.tipoOperacion,
    required this.tipoDoc,
    required this.serie,
    required this.correlativo,
    required this.fechaEmision,
    required this.formaPago,
    required this.tipoMoneda,
    required this.client,
    required this.company,
    required this.mtoOperGravadas,
    required this.mtoIgv,
    required this.valorVenta,
    required this.totalImpuestos,
    required this.subTotal,
    required this.mtoImpVenta,
    required this.details,
    required this.legends,
  });

  String ublVersion;
  String tipoOperacion;
  String tipoDoc;
  String serie;
  String correlativo;
  DateTime fechaEmision;
  FormaPago formaPago;
  String tipoMoneda;
  Client client;
  Company company;
  int mtoOperGravadas;
  int mtoIgv;
  int valorVenta;
  int totalImpuestos;
  int subTotal;
  int mtoImpVenta;
  List<Detail> details;
  List<Legend> legends;

  factory ElectronicTicket.fromJson(Map<String, dynamic> json) =>
      ElectronicTicket(
        ublVersion: json["ublVersion"],
        tipoOperacion: json["tipoOperacion"],
        tipoDoc: json["tipoDoc"],
        serie: json["serie"],
        correlativo: json["correlativo"],
        fechaEmision: DateTime.parse(json["fechaEmision"]),
        formaPago: FormaPago.fromJson(json["formaPago"]),
        tipoMoneda: json["tipoMoneda"],
        client: Client.fromJson(json["client"]),
        company: Company.fromJson(json["company"]),
        mtoOperGravadas: json["mtoOperGravadas"],
        mtoIgv: json["mtoIGV"],
        valorVenta: json["valorVenta"],
        totalImpuestos: json["totalImpuestos"],
        subTotal: json["subTotal"],
        mtoImpVenta: json["mtoImpVenta"],
        details:
            List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        legends:
            List<Legend>.from(json["legends"].map((x) => Legend.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ublVersion": ublVersion,
        "tipoOperacion": tipoOperacion,
        "tipoDoc": tipoDoc,
        "serie": serie,
        "correlativo": correlativo,
        "fechaEmision": fechaEmision.toIso8601String(),
        "formaPago": formaPago.toJson(),
        "tipoMoneda": tipoMoneda,
        "client": client.toJson(),
        "company": company.toJson(),
        "mtoOperGravadas": mtoOperGravadas,
        "mtoIGV": mtoIgv,
        "valorVenta": valorVenta,
        "totalImpuestos": totalImpuestos,
        "subTotal": subTotal,
        "mtoImpVenta": mtoImpVenta,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "legends": List<dynamic>.from(legends.map((x) => x.toJson())),
      };
}

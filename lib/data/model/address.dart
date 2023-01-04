class Address {
  Address({
    required this.direccion,
    required this.provincia,
    required this.departamento,
    required this.distrito,
    required this.ubigueo,
  });

  String direccion;
  String provincia;
  String departamento;
  String distrito;
  String ubigueo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        direccion: json["direccion"],
        provincia: json["provincia"],
        departamento: json["departamento"],
        distrito: json["distrito"],
        ubigueo: json["ubigueo"],
      );

  Map<String, dynamic> toJson() => {
        "direccion": direccion,
        "provincia": provincia,
        "departamento": departamento,
        "distrito": distrito,
        "ubigueo": ubigueo,
      };
}

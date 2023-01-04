class FormaPago {
  FormaPago({
    required this.moneda,
    required this.tipo,
  });

  String moneda;
  String tipo;

  factory FormaPago.fromJson(Map<String, dynamic> json) => FormaPago(
        moneda: json["moneda"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toJson() => {
        "moneda": moneda,
        "tipo": tipo,
      };
}

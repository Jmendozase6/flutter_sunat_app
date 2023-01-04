class Detail {
  Detail({
    required this.codProducto,
    required this.unidad,
    required this.descripcion,
    required this.cantidad,
    required this.mtoValorUnitario,
    required this.mtoValorVenta,
    required this.mtoBaseIgv,
    required this.porcentajeIgv,
    required this.igv,
    required this.tipAfeIgv,
    required this.totalImpuestos,
    required this.mtoPrecioUnitario,
  });

  String codProducto;
  String unidad;
  String descripcion;
  int cantidad;
  int mtoValorUnitario;
  int mtoValorVenta;
  int mtoBaseIgv;
  int porcentajeIgv;
  int igv;
  int tipAfeIgv;
  int totalImpuestos;
  int mtoPrecioUnitario;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        codProducto: json["codProducto"],
        unidad: json["unidad"],
        descripcion: json["descripcion"],
        cantidad: json["cantidad"],
        mtoValorUnitario: json["mtoValorUnitario"],
        mtoValorVenta: json["mtoValorVenta"],
        mtoBaseIgv: json["mtoBaseIgv"],
        porcentajeIgv: json["porcentajeIgv"],
        igv: json["igv"],
        tipAfeIgv: json["tipAfeIgv"],
        totalImpuestos: json["totalImpuestos"],
        mtoPrecioUnitario: json["mtoPrecioUnitario"],
      );

  Map<String, dynamic> toJson() => {
        "codProducto": codProducto,
        "unidad": unidad,
        "descripcion": descripcion,
        "cantidad": cantidad,
        "mtoValorUnitario": mtoValorUnitario,
        "mtoValorVenta": mtoValorVenta,
        "mtoBaseIgv": mtoBaseIgv,
        "porcentajeIgv": porcentajeIgv,
        "igv": igv,
        "tipAfeIgv": tipAfeIgv,
        "totalImpuestos": totalImpuestos,
        "mtoPrecioUnitario": mtoPrecioUnitario,
      };
}

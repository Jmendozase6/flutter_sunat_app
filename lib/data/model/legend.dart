class Legend {
  Legend({
    required this.code,
    required this.value,
  });

  String code;
  String value;

  factory Legend.fromJson(Map<String, dynamic> json) => Legend(
        code: json["code"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "value": value,
      };
}

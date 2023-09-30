import 'dart:convert';

class CompaniesDataModel {
  String? name;
  String? description;

  CompaniesDataModel({
    this.name,
    this.description,
  });

  CompaniesDataModel copyWith({
    String? name,
    String? description,
  }) {
    return CompaniesDataModel(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
    };
  }

  factory CompaniesDataModel.fromMap(Map<String, dynamic> map) {
    return CompaniesDataModel(
      name: map['name'] != null ? map['name'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompaniesDataModel.fromJson(String source) =>
      CompaniesDataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CompaniesDataModel(name: $name, description: $description)';

  @override
  bool operator ==(covariant CompaniesDataModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.description == description;
  }

  @override
  int get hashCode => name.hashCode ^ description.hashCode;

  static length(int i) {}
}

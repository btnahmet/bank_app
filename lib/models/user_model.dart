class UserModel {
  final String fullName;
  final String identityNumber;
  final String phone;
  final String password;

  UserModel({
    required this.fullName,
    required this.identityNumber,
    required this.phone,
    required this.password,
  });

  // JSON'a dönüştürme (Firebase vs. için)
  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'identityNumber': identityNumber,
      'phone': phone,
      'password': password,
    };
  }

  // JSON'dan model oluşturma
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      fullName: json['fullName'],
      identityNumber: json['identityNumber'],
      phone: json['phone'],
      password: json['password'],
    );
  }
}

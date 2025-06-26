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

  // Firestore için JSON'a dönüştür
  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'identityNumber': identityNumber,
      'phone': phone,
      'password': password,
    };
  }

  // Firestore'dan veri çekildiğinde model oluştur
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      fullName: json['fullName'] ?? '',
      identityNumber: json['identityNumber'] ?? '',
      phone: json['phone'] ?? '',
      password: json['password'] ?? '',
    );
  }

  // shared_preferences için string'e dönüştür
  String toPrefsString() {
    return '$fullName|$identityNumber|$phone|$password';
  }

  // string'den model üret (shared_preferences için)
  factory UserModel.fromPrefsString(String data) {
    final parts = data.split('|');
    return UserModel(
      fullName: parts[0],
      identityNumber: parts[1],
      phone: parts[2],
      password: parts[3],
    );
  }
}

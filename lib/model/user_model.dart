class UserModel {
  String? userId;
  String? userName;
  String? userEmail;
  bool? isUserVerified;
  String? userCreated;

  UserModel({
    this.userId,
    this.userName,
    this.userEmail,
    this.isUserVerified,
    this.userCreated,
  });

  factory UserModel.fromMap(map) {
    return UserModel(
      userId: map['userId'],
      userName: map['userName'],
      userEmail: map['userEmail'],
      isUserVerified: map['isUserVerified'],
      userCreated: map['userCreated'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'userEmail': userEmail,
      'isUserVerified': isUserVerified,
      'userCreated': userCreated,
    };
  }
}

import 'package:pointclick/models/user_model.dart';

class StreamModel {
  String id;
  UserModel user;
  DateTime timestamp;
  String reason;
  String specialReason;

  StreamModel(this.id, this.user, this.timestamp, this.reason, this.specialReason);

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "user": user,
      "timestamp": timestamp,
      "reason": reason,
      "specialReason": specialReason
    };
  }

  static StreamModel fromJson(Map<String, dynamic> firebaseData) {
    return StreamModel(
        firebaseData['id'],
        UserModel.fromJson(firebaseData['user']),
        DateTime.fromMillisecondsSinceEpoch(firebaseData['timestamp']),
        firebaseData['reason'],
        firebaseData['specialReason']
    );
  }


}
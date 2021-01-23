import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

//Equatable Compare user objects to eachother without writing extra code
class UserEntity extends Equatable {
  final String id;
  final String email;

  //Constructor
  const UserEntity({this.id, @required this.email});
  @override
  //Props Determines whether two equatables are equal
  List<Object> get props => [id, email];
  //will compare id and email and make sure they are equal to each other (T/F)
  //ie:
  // id1, email1 -- id2, email2
  //user1==user2 // false
  //id1, email1, id1, email 1
  //user1==user2 //true

  @override
  String toString() => '''UserEntity{
    id: $id,
    email: $email
  }''';

  //MapStringDynamic is a json
  Map<String, dynamic> toDocument() {
    return {
      'email': email,
    };
  }

  //how to convert a firestore document snapshot into a user entity
  factory UserEntity.fromSnapshot(DocumentSnapshot doc) {
    return UserEntity(
      id: doc.documentID,
      email: doc.data['email'] ?? '',
    );
  }
}

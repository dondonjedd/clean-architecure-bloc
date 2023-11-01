// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({required this.id, required this.createdAt, required this.name, required this.avatar});

  final int id;
  final String createdAt;
  final String name;
  final String avatar;

  const User.empty()
      : this(
          id: 1,
          avatar: '',
          createdAt: '',
          name: '',
        );

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}

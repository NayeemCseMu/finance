// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class OnboardModel extends Equatable {
  final String image;
  final String title;
  final String subtitle;
  const OnboardModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  OnboardModel copyWith({
    String? image,
    String? title,
    String? subtitle,
  }) {
    return OnboardModel(
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'subtitle': subtitle,
    };
  }

  factory OnboardModel.fromMap(Map<String, dynamic> map) {
    return OnboardModel(
      image: map['image'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnboardModel.fromJson(String source) =>
      OnboardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [image, title, subtitle];
}

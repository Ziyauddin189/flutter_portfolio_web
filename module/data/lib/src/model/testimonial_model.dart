import 'package:flutter/material.dart';

class TestimonialItemList {
  final List<TestimonialItem> items;

  TestimonialItemList({required this.items});
}

class TestimonialItem {
  final AssetImage image;
  final int starCount;
  final String description;
  final String name;
  final String position;

  TestimonialItem({
    required this.image,
    required this.starCount,
    required this.description,
    required this.name,
    required this.position,
  });
}



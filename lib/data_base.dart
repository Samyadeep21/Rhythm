import 'package:flutter/material.dart';

class Song {
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;
  Song(
      {required this.name,
        required this.singer,
        required this.image,
        required this.duration,
        required this.color});
}

List<Song> mostPopular = [
  Song(
      name: "like it doesn't hurt",
      image: "assets/images/music_pic 1.jpg",
      singer: "Charle Cardin",
      duration: 300,
      color: Colors.black),
  Song(
      name: "tu hi mei shab hai",
      image: "assets/images/song2.jpg",
      singer: "KK",
      duration: 252,
      color: Colors.red),
  Song(
      name: "hail to the victor",
      image: "assets/images/song3.jpg",
      singer: "Danito & athina",
      duration: 532,
      color: Colors.orange),
  Song(
      name: "blue eyes",
      image: "assets/images/song4.jpg",
      singer: "Honey Singh",
      duration: 264,
      color: Colors.blue)
];

List<Song> newRelease = [
  Song(
      name: "love on the brain",
      image: "assets/images/music_pic 1.jpg",
      singer: "Tvorchi",
      duration: 252,
      color: Colors.red),
  Song(
      name: "like it doesn't hurt",
      image: "assets/glowing-music.jpg",
      singer: "Charle Cardin",
      duration: 300,
      color: Colors.black),
  Song(
      name: "idk",
      image: "assets/images/music_pic 1.jpg",
      singer: "ley you",
      duration: 264,
      color: Colors.blue),
  Song(
      name: "hail to the victor",
      image: "assets/glowing-music.jpg",
      singer: "danito & athina",
      duration: 532,
      color: Colors.orange),
];
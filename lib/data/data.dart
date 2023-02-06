import 'package:flutter/material.dart';

class NFT {
  final String img;
  final double price;
  final String title;
  final String category;
  final String tab;
  const NFT(
      {required this.price,
      required this.title,
      required this.category,
      required this.tab,
      required this.img});
}

const List<NFT> datas = [
  NFT(
      price: 2.84,
      title: "Panama Ape",
      category: "Street Monkeys",
      tab: "Recent",
      img: "assets/images/ape1.jpg"),
  NFT(
      price: 1.50,
      title: "Punk Ape",
      category: "Street Monkeys",
      tab: "Recent",
      img: "assets/images/ape3.jpg"),
  NFT(
      price: 1.40,
      title: "Fashion Ape",
      category: "Street Monkeys",
      tab: "Recent",
      img: "assets/images/ape2.jpg"),
  NFT(
      price: 1.28,
      title: "Hacker Ape",
      category: "Street Monkeys",
      tab: "Recent",
      img: "assets/images/ape4.jpg"),
  NFT(
      price: 1.84,
      title: "Cool Ape",
      category: "Street Monkeys",
      tab: "Recent",
      img: "assets/images/ape5.jpg"),
  NFT(
      price: 0.64,
      title: "Robot Ape",
      category: "Street Monkeys",
      tab: "Recent",
      img: "assets/images/ape6.jpg"),
  NFT(
      price: 0.23,
      title: "Serious Ape",
      category: "Street Monkeys",
      tab: "Trending",
      img: "assets/images/1.png"),
  NFT(
      price: 0.26,
      title: "Cool Ape",
      category: "Street Monkeys",
      tab: "Trending",
      img: "assets/images/2.png"),
  NFT(
      price: 0.19,
      title: "Bored Ape",
      category: "Street Monkeys",
      tab: "Trending",
      img: "assets/images/3.png"),
  NFT(
      price: 0.90,
      title: "Cool Ape",
      category: "Street Monkeys",
      tab: "Top",
      img: "assets/images/4.png"),
  NFT(
      price: 0.89,
      title: "Smart Ape",
      category: "Street Monkeys",
      tab: "Top",
      img: "assets/images/5.png"),
  NFT(
      price: 0.97,
      title: "Funky Ape",
      category: "Street Monkeys",
      tab: "Top",
      img: "assets/images/6.png"),
  NFT(
      price: 0.68,
      title: "Foody Ape",
      category: "Street Monkeys",
      tab: "Games",
      img: "assets/images/7.png"),
  NFT(
      price: 0.54,
      title: "Zebra Ape",
      category: "Street Monkeys",
      tab: "Games",
      img: "assets/images/8.png"),
  NFT(
      price: 0.36,
      title: "Winter Ape",
      category: "Street Monkeys",
      tab: "Games",
      img: "assets/images/9.png"),
  NFT(
      price: 0.94,
      title: "Furious Ape",
      category: "Street Monkeys",
      tab: "Nature",
      img: "assets/images/10.png"),
  NFT(
      price: 0.77,
      title: "Silver Ape",
      category: "Street Monkeys",
      tab: "Nature",
      img: "assets/images/11.png"),
  NFT(
      price: 0.43,
      title: "Panda Ape",
      category: "Street Monkeys",
      tab: "Nature",
      img: "assets/images/12.png"),
  NFT(
      price: 0.78,
      title: "Bored Ape",
      category: "Street Monkeys",
      tab: "Nature",
      img: "assets/images/13.png"),
];

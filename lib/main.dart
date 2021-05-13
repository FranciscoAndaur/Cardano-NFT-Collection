
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//The main function is the starting point for all our Flutter apps.
void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Text('Crypto Knitties')),
                Tab(icon: Text('Spacebudz')),
                Tab(icon: Text('CardanoApes')),
              ],
            ),
            title: Text('Cardano NFT Collection'),
          ),
          body: TabBarView(
            children: [
              Image.network('https://ipfs.blockfrost.dev/ipfs/QmT1zoVVR8zYbzRhHjL8VaFr4rywTDmMdxKHAi2RTjAQBJ'),
              Image.network('https://ipfs.blockfrost.dev/ipfs/QmQbMbNVpfurRMmcZGSFi6HKvmtHLdnpCJ7UwpimSSRgky'),
              Image.network('https://ipfs.blockfrost.dev/ipfs/QmPPfYK7bXPXkacKiWFTvMvdPfwMoJ8amtrkCjhoMBJ5gs')],
          ),
        ),
      ),
    );
  }
}

// CarouselSlider(
// options: CarouselOptions(height: 400.0),
// items: [1,2,3,4,5].map((i) {
// return Builder(
// builder: (BuildContext context) {
// return Container(
// width: MediaQuery.of(context).size.width,
// margin: EdgeInsets.symmetric(horizontal: 5.0),
// decoration: BoxDecoration(
// color: Colors.amber
// ),
// child: Text('text $i', style: TextStyle(fontSize: 16.0),)
// );
// },
// );
// }).toList(),
// );




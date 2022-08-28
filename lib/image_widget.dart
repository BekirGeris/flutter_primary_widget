import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);
  final String _url =
      "https://avatars.mds.yandex.net/i?id=e67c20f98bdc512c5d3bc20c140f8fac-5719595-images-taas-consumers&n=27&h=384&w=480";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Container(
                  width: 120,
                  height: 150,
                  color: Colors.brown,
                  child: Image.asset(
                    'assets/images/image.jpg',
                    fit: BoxFit.fill,
                  ),
                )),
                Expanded(
                    child: Container(
                        width: 150,
                        height: 100,
                        color: Colors.brown,
                        child: Image.network(_url, fit: BoxFit.fill))),
                Expanded(
                  child: Container(
                      child: CircleAvatar(
                    // child: Text("e",style: Theme.of(context).textTheme.headline2,),
                    radius: 60,
                    backgroundColor: Colors.pink,
                    backgroundImage: NetworkImage(_url),
                  )),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: 'assets/images/loading.gif',
                image: _url
            ),
          ),
          Expanded(child: Placeholder())
        ],
      ),
    );
  }
}

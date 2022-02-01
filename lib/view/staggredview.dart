import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StagrredGridView extends StatefulWidget {
  const StagrredGridView({Key? key}) : super(key: key);

  @override
  _StagrredGridViewState createState() => _StagrredGridViewState();
}

class _StagrredGridViewState extends State<StagrredGridView> {

  var imageList = [
    'https://picsum.photos/seed/image001/500/500',
    'https://picsum.photos/seed/image002/500/800',
    'https://picsum.photos/seed/image003/500/300',
    'https://picsum.photos/seed/image004/500/900',
    'https://picsum.photos/seed/image005/500/600',
    'https://picsum.photos/seed/image006/500/500',
    'https://picsum.photos/seed/image007/500/400',
    'https://picsum.photos/seed/image008/500/700',
    'https://picsum.photos/seed/image009/500/600',
    'https://picsum.photos/seed/image010/500/900',
    'https://picsum.photos/seed/image011/500/900',
    'https://picsum.photos/seed/image012/500/700',
    'https://picsum.photos/seed/image013/500/700',
    'https://picsum.photos/seed/image014/500/800',
    'https://picsum.photos/seed/image015/500/500',
    'https://picsum.photos/seed/image016/500/700',
    'https://picsum.photos/seed/image019/500/800',
    'https://picsum.photos/seed/image018/500/900',
    'https://picsum.photos/seed/image017/500/600',
    'https://picsum.photos/seed/image016/500/700',
    'https://picsum.photos/seed/image015/500/500',
    'https://picsum.photos/seed/image014/500/800',
    'https://picsum.photos/seed/image013/500/700',
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: 3,
        itemCount: imageList.length,
        itemBuilder: (context,index){
          return Container(
            child: Image.network(imageList[index]),
          );
        },
        staggeredTileBuilder: (index){
        //return StaggeredTile.count(4, 2);
          return StaggeredTile.count( (index % 3 == 0) ? 2: 1,
            (index % 4 == 0) ? 2 : 1);
        },
        mainAxisSpacing: 4,
       crossAxisSpacing: 4,

        );
  }
}

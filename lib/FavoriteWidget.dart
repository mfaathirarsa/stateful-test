import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  bool isFavorited = true;
  int favoriteCount = 41;
  //ValueChanged<bool> onFavoriteChanged;
  FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  int _favoriteCount = 41;
  // ···
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (widget.isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (widget.isFavorited) {
        widget.favoriteCount -= 1;
        _favoriteCount = widget.favoriteCount;
        widget.isFavorited = false;
      } else {
        widget.favoriteCount += 1;
        _favoriteCount = widget.favoriteCount;
        widget.isFavorited = true;
      }
    });
  }
// ···
}
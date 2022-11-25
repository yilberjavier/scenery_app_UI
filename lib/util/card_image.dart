import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  final String locationName;

  const CardImage({
    super.key,
    required this.imagePath,
    required this.locationName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black.withOpacity(.4),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star_outlined, color: Colors.yellow),
                      SizedBox(width: 10),
                      Text(
                        '4.5',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black.withOpacity(.4)),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black.withOpacity(.4)),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      color: Colors.orange, size: 20),
                  Text(
                    locationName,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

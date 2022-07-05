


class productliist{
  static List<ProductsList> pl = [
   ProductsList (
       productName: 'Chapter1',
        video:"https://media.istockphoto.com/videos/cyborg-humanoid-robot-show-a-medicine-capsule-to-a-camera-rack-focus-video-id1300942368",
       tapped: false,
    ),
      ProductsList (
        productName: 'Chapter2',
        video:"https://media.istockphoto.com/videos/hightech-startup-concept-innovative-female-software-engineer-standing-video-id1338935699",
      tapped: false,
      ),

      ProductsList(
       productName: 'Chapter3',
        video:"https://media.istockphoto.com/videos/the-concept-of-digitalization-of-information-it-specialist-standing-video-id1130887908",
      tapped: false,
      ),

      ProductsList(
        productName: 'Chapter4',
        video:"https://media.istockphoto.com/videos/group-of-latin-american-engineering-students-learning-how-circuits-video-id1352496455",
    tapped: false,
      ),
      ProductsList(
       productName: 'Chapter5',
        video:"https://media.istockphoto.com/videos/female-engineer-looking-on-on-innovative-technology-mechanical-robot-video-id1276785787",
     tapped: false,
      ),
      ProductsList(
        productName: 'Chapter6',
        video:"https://media.istockphoto.com/videos/female-engineer-looking-on-on-innovative-technology-mechanical-robot-video-id1276785787",
     tapped: false,
      ),
      ProductsList(
        productName: 'Chapter7',
        video:"https://media.istockphoto.com/videos/female-engineer-looking-on-on-innovative-technology-mechanical-robot-video-id1276785787",
     tapped: false,
      ),
      ProductsList(
        productName: 'Chapter8',
        video:"https://media.istockphoto.com/videos/female-engineer-looking-on-on-innovative-technology-mechanical-robot-video-id1276785787",
     tapped: false,
      ),
      ProductsList(
        productName: 'Chapter9',
        video:"https://media.istockphoto.com/videos/female-engineer-looking-on-on-innovative-technology-mechanical-robot-video-id1276785787",
     tapped: false,
      ),
      ProductsList(
       productName: 'Chapter10',
        video:"https://media.istockphoto.com/videos/female-engineer-looking-on-on-innovative-technology-mechanical-robot-video-id1276785787",
     tapped: false,
      )
  ];
}



class ProductsList {
  String productName;
  String video;
  bool tapped;

  ProductsList(
      {required this.video,
      required this.productName,
      required this.tapped});

}

import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static fetchAll() {
    return [
      Location(1, "Mount Fuji", "assets/images/fuji.jpg", [
        LocationFact("Summary",
            "Mount Fuji (富士山, Fujisan) is with 3776 meters Japan's highest mountain. It is not surprising that the nearly perfectly shaped volcano has been worshiped as a sacred mountain and experienced big popularity among artists and common people throughout the centuries. Mount Fuji is an active volcano, which most recently erupted in 1707. It stands on the border between Yamanashi and Shizuoka prefectures and can be seen from Tokyo and Yokohama on clear days."),
        LocationFact("Visit",
            "Another easy way to view Mount Fuji is from the train on a trip between Tokyo and Osaka. If you take the shinkansen from Tokyo in direction of Nagoya, Kyoto and Osaka, the best view of the mountain can be enjoyed from around Shin-Fuji Station on the right hand side of the train, about 40-45 minutes into the journey.")
      ]),
      Location(2, "Kiyomizu Temple", "assets/images/kiyomizu.jpg", [
        LocationFact("Summary", 
        'Kiyomizudera (清水寺, literally "Pure Water Temple") is one of the most celebrated temples of Japan. It was founded in 780 on the site of the Otowa Waterfall in the wooded hills east of Kyoto, and derives its name from the fall\'s pure waters. The temple was originally associated with the Hosso sect, one of the oldest schools within Japanese Buddhism, but formed its own Kita Hosso sect in 1965. In 1994, the temple was added to the list of UNESCO world heritage sites.'),
        LocationFact("Architecture", 
        "Kiyomizudera is best known for its wooden stage that juts out from its main hall, 13 meters above the hillside below. The stage affords visitors a nice view of the numerous cherry and maple trees below that erupt in a sea of color in spring and fall, as well as of the city of Kyoto in the distance. The main hall, which together with the stage was built without the use of nails, houses the temple's primary object of worship, a small statue of the eleven faced, thousand armed Kannon.")
      ]),
      Location(3, "Arashiyama Area", "assets/images/arashiyama.jpg", [
        LocationFact("Description", 
        "Arashiyama is in the far west of Kyoto, tucked along the base of the Arashiyama Mountains (meaning “Storm Mountains”). It’s a fair distance from the center of Kyoto: whether you go by train, bus, bicycle or taxi, you’re generally looking at about a 30-minute trip. Still, it’s worth it for the number of great sights here."),
        LocationFact("Important Note", 
        "The main street of Arashiyama, along with the famed Togetsu-kyo Bridge, which form the heart of Arashiyama, is nothing but a tourist circus. But, don’t despair. As quickly as you can, walk upriver to Kameyama-koen Park, or into Tenryu-ji Temple and on into the Bamboo Grove. If you’d like to get away from the crowds and still see the highlights, check out our Arashiyama Bamboo Grove Walking Tour, which outlines the best route to follow.")
      ])
    ];
  }

  static Location fetchById(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
        if (locations[i].id == locationID) {
          return locations[i];
        }
    }
    return null;
  }
}

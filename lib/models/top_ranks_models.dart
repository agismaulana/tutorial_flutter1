class TopRankModels {
  String name;
  String nameSchool;
  String image;
  int point;

  TopRankModels({
    required this.name,
    required this.nameSchool,
    required this.image,
    required this.point,
  });

  static List<TopRankModels> topRanks = [
    TopRankModels(
      name: "Angelie Watson", 
      nameSchool: "Havard University", 
      image: "assets/images/people1.jpg", 
      point: 200,
    ),
    TopRankModels(
      name: "Jason Will", 
      nameSchool: "Stanford University", 
      image: "assets/images/people2.jpg", 
      point: 180,
    ),
    TopRankModels(
      name: "Johnny Wreight", 
      nameSchool: "Tokyo University", 
      image: "assets/images/people3.jpg", 
      point: 120,
    ),
    TopRankModels(
      name: "Dyne Angelie", 
      nameSchool: "Kyoto University", 
      image: "assets/images/people4.jpg", 
      point: 80,
    ),
  ];
}
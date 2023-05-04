class DeveloperUniqueItem {
  String? id;
  String? name;
  String? job;
  String? image;
  int? points;

  DeveloperUniqueItem(
      {required this.id,
      required this.name,
      required this.job,
      required this.image,
      required this.points});

  static List<DeveloperUniqueItem> developerItems() {
    return [
      DeveloperUniqueItem(
          id: "01",
          name: "John Doe",
          job: "Software Developer",
          image:
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          points: 67),
      DeveloperUniqueItem(
          id: "02",
          name: "Jane Smith",
          job: "Frontend Developer",
          image:
              "https://images.pexels.com/photos/749091/pexels-photo-749091.jpeg",
          points: 85),
      DeveloperUniqueItem(
          id: "03",
          name: "Robert Johnson",
          job: "Backend Developer",
          image:
              "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
          points: 72),
      DeveloperUniqueItem(
          id: "04",
          name: "Sarah Lee",
          job: "Fullstack Developer",
          image:
              "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          points: 91),
      DeveloperUniqueItem(
          id: "05",
          name: "Michael Chen",
          job: "Mobile Developer",
          image:
              "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          points: 80),
      DeveloperUniqueItem(
          id: "06",
          name: "Emily Davis",
          job: "Game Developer",
          image:
              "https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          points: 63)
    ];
  }
}

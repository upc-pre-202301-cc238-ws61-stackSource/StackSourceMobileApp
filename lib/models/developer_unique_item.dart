class DeveloperUniqueItem {
  String? id;
  String? name;
  String? job;
  String? image;
  String? specialityType;
  String? yearsOfExperience;
  String? framework;
  String? programmingLanguage;
  String? database;
  int? points;

  DeveloperUniqueItem(
      {required this.id,
      required this.name,
      required this.job,
      required this.image,
      required this.specialityType,
      required this.yearsOfExperience,
      required this.framework,
      required this.programmingLanguage,
      required this.database,
      required this.points});

  static List<DeveloperUniqueItem> developerItems() {
    return [
      DeveloperUniqueItem(
          id: "01",
          name: "John Doe",
          job: "Backend Developer",
          image:
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          specialityType: "Backend",
          yearsOfExperience: "2 - 5",
          framework: "ASP.NET Core",
          programmingLanguage: "C#",
          database: "SQL Server",
          points: 67),
      DeveloperUniqueItem(
          id: "02",
          name: "Jane Smith",
          job: "Frontend Developer",
          image:
              "https://images.pexels.com/photos/749091/pexels-photo-749091.jpeg",
          specialityType: "Frontend",
          yearsOfExperience: "5+",
          framework: "Angular",
          programmingLanguage: "JavaScript",
          database: "MySQL",
          points: 85),
      DeveloperUniqueItem(
          id: "03",
          name: "Robert Johnson",
          job: "Backend Developer",
          image:
              "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg",
          specialityType: "Backend",
          yearsOfExperience: "2 - 5",
          framework: "Django",
          programmingLanguage: "Python",
          database: "PostgreSQL",
          points: 72),
      DeveloperUniqueItem(
          id: "04",
          name: "Sarah Lee",
          job: "Fullstack Developer",
          image:
              "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          specialityType: "FullStack",
          yearsOfExperience: "5+",
          framework: "Vue",
          programmingLanguage: "JavaScript",
          database: "MongoDB",
          points: 91),
      DeveloperUniqueItem(
          id: "05",
          name: "Michael Chen",
          job: "Mobile Developer",
          image:
              "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          specialityType: "Mobile",
          yearsOfExperience: "1 - 2",
          framework: "React Native",
          programmingLanguage: "JavaScript",
          database: "MongoDB",
          points: 80),
      DeveloperUniqueItem(
          id: "06",
          name: "Emily Davis",
          job: "FullStack Developer",
          image:
              "https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          specialityType: "FullStack",
          yearsOfExperience: "5+",
          framework: "Vue",
          programmingLanguage: "JavaScript",
          database: "MongoDB",
          points: 63)
    ];
  }
}

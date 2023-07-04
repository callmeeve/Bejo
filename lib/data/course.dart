class Course {
  final String name;
  final String description;
  final String imageUrl;
  final String category;
  final String videoUrl;

  Course({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.videoUrl,
  });
}

final List<Course> courses = [
  Course(
    imageUrl: 'assets/images/design1.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=PJIKqnftfPw&pp=ygUFZmlnbWE%3D',
    name: 'Introduction to Figma',
    category: 'Design',
    description:
        'Figma is a popular web-based design and prototyping tool used by designers and teams to create user interfaces, graphics, and interactive prototypes. It offers a collaborative environment where multiple users can work on the same project simultaneously.',
  ),
  Course(
    imageUrl: 'assets/images/design2.jpg',
    videoUrl:
        'https://www.youtube.com/watch?v=C0ESitKzc5I&pp=ygUMZmlnbWEgcGx1Z2lu',
    name: 'Introduction to Plugins for Figma',
    category: 'Design',
    description:
        'Plugins are powerful extensions that enhance the functionality of Figma, a popular design and prototyping tool. They provide additional features, automation capabilities, and integrations with other tools to streamline design workflows.',
  ),
  Course(
    imageUrl: 'assets/images/android1.jpg',
    videoUrl: 'https://www.youtube.com/watch?v=6dSNbskzlz4&pp=ygUGa290bGlu',
    name: 'Get Started Programming with Kotlin',
    category: 'Programming',
    description:
        'Kotlin is a modern programming language that runs on the Java Virtual Machine (JVM) and can be used for developing a wide range of applications, including Android apps, web applications, server-side applications, and more.',
  ),
  Course(
    imageUrl: 'assets/images/android2.jpg',
    videoUrl:
        'https://www.youtube.com/watch?v=pUTz5IOkBtE&pp=ygUXa290bGluIGFuZHJvaWQgdHV0b3JpYWw%3D',
    name: 'Learn to make Android Applications for Beginners',
    category: 'Programming',
    description:
        'Android is one of the most popular mobile operating systems, and learning how to develop Android applications can be an exciting journey.',
  ),
  Course(
    imageUrl: 'assets/images/accounting1.jpg',
    videoUrl:
        'https://www.youtube.com/watch?v=6WgvzCU3TI8&pp=ygULYmFzaWMgZXhjZWw%3D',
    name: 'Learn Basic Excel',
    category: 'Accounting',
    description:
        'Excel is a widely used spreadsheet program developed by Microsoft. It provides a powerful set of tools for data analysis, calculation, and visualization.',
  ),
  Course(
    imageUrl: 'assets/images/accounting2.jpg',
    videoUrl:
        'https://www.youtube.com/watch?v=5BzbPBKjqGg&pp=ygUWbGFwb3JhbiBrZXVhbmdhbiBleGNlbA%3D%3D',
    name: 'Learn to make Financial Reports',
    category: 'Accounting',
    description:
        'Financial reports are essential documents that provide an overview of a company financial performance. Creating accurate and comprehensive financial reports is crucial for decision-making, analysis, and compliance.',
  ),
];

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum Vitae',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> members = [
    {
      'name': 'Ninge Thamar',
      'jobTitle': 'Ingenieur Informatique',
      'experience': '2 lane',
      'personalInfo': '23 lane ap viv potoprens',
    },
    {
      'name': 'Sadlie Rose Indiana Nazaire',
      'jobTitle': 'Analyste de données',
      'experience': '3 lane',
      'personalInfo': '30 lane ap viv jakmel',
    },
    {
      'name': ' Carl Obed Esdras Dorvil',
      'jobTitle': 'Developpeur Web',
      'experience': '1 lane',
      'personalInfo': '25 lane ap viv leogane',
    },
    {
      'name': 'Elize jonhs-ney',
      'jobTitle': 'Designer UX/UI',
      'experience': '5 lane',
      'personalInfo': '28 lane ap viv port-de-paix',
    },
    {
      'name': 'Duckens Sanon',
      'jobTitle': 'Ingenieur Civil',
      'experience': '4 lane',
      'personalInfo': '27 lane ap viv cap-haitien',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Les Menmbres Du Groupe'),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(members[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPointsPage(member: members[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MainPointsPage extends StatelessWidget {
  final Map<String, String> member;

  MainPointsPage({required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV ${member['name']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gran Pwen nan CV ${member['name']}:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalInformationPage(member: member),
                  ),
                );
              },
              child: Text('Enfòmasyon Pèsonèl'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AcademicBackgroundPage(member: member),
                  ),
                );
              },
              child: Text('Fòmasyon Akademik'),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalInformationPage extends StatelessWidget {
  final Map<String, String> member;

  PersonalInformationPage({required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enfòmasyon Pèsonèl ${member['name']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enfòmasyon Pèsonèl pou ${member['name']}:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text('Pòs: ${member['jobTitle']}'),
            Text('Eksperyans: ${member['experience']}'),
            Text('Enfòmasyon Pèsonèl: ${member['personalInfo']}'),
          ],
        ),
      ),
    );
  }
}

class AcademicBackgroundPage extends StatelessWidget {
  final Map<String, String> member;

  AcademicBackgroundPage({required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fòmasyon Akademik ${member['name']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fòmasyon Akademik pou ${member['name']}:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Ajoute detay sou fòmasyon akademik la isit la.
          ],
        ),
      ),
    );
  }
}

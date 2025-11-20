import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp10());
}

class MyApp10 extends StatelessWidget {
  const MyApp10 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Player Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
          secondary: const Color(0xFF1DB954),
        ),
      ),
      home: const MusicPlayerScreen(),
    );
  }
}

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  Widget _buildCardSuggestion(BuildContext context, String title, Color color) {
    return Container(
      width: 150,
      height: 180,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.music_note, size: 40, color: Colors.white),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
      String title, String subtitle, IconData icon, Color iconColor) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: iconColor, size: 30),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.more_vert, color: Colors.white70),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue.shade100,
        child: ListView(
          children: [
            DrawerHeader(child: Icon(Icons.account_circle,size: 100,)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.pushNamed(context, '/exo1');
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note_sharp),
              title: Text('Music'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo1O');
              },
            ),ListTile(
              leading: Icon(Icons.pages),
              title: Text('Pages'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo11');
              },
            ),ListTile(
              leading: Icon(Icons.person_outline_outlined),
              title: Text('Simple profile'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo2');
              },
            ),ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile advance'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo3');
              },
            ),ListTile(
              leading: Icon(Icons.add),
              title: Text('Counter'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo4');
              },
            ),ListTile(
              leading: Icon(Icons.book),
              title: Text('Proverbs'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo5');
              },
            ),ListTile(
              leading: Icon(Icons.person),
              title: Text('Contacts'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo6');
              },
            ),ListTile(
              leading: Icon(Icons.cloud),
              title: Text('Meteo'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo7');
              },
            ),ListTile(
              leading: Icon(Icons.cabin),
              title: Text('Cases'),
              onTap: (){
                Navigator.of(context).pushNamed('/exo8');
              },
            ),
          ],

        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF000000),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Accueil',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green.shade900, const Color(0xFF121212)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        'Bonjour',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      // Petite section de cartes
                      SizedBox(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildCardSuggestion(context, 'Récemment joué', Colors.grey.shade700),
                            _buildCardSuggestion(context, 'Découvertes', Colors.grey.shade700),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Listes de lecture populaires',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                _buildListItem('Titre de Chanson 1', 'Artiste X', Icons.radio, Colors.orange),
                _buildListItem('Podcast du Jour', 'Podcast Studio', Icons.mic, Colors.blue),
                _buildListItem('Chanson Relaxante', 'Ambiance Z', Icons.spa, Colors.purple),
                _buildListItem('Le Hit du Moment', 'Artiste Y', Icons.whatshot, Colors.red),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
      // Mini Player (simulé)
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.grey.shade900,
        child: ListTile(
          leading: const Icon(Icons.album, color: Colors.white),
          title: const Text('Now Playing', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: const Text('Artiste Cool', style: TextStyle(color: Colors.white70)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.play_arrow, color: Color(0xFF1DB954), size: 35),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
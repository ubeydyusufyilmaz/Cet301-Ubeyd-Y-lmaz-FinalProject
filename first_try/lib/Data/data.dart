class Article {
  String image;
  String title;
  String description;
  String time;
  String author;
  String category;
  String authorImg;

  Article({
    this.image,
    this.title,
    this.description,
    this.time,
    this.author,
    this.category,
    this.authorImg,
  });
}


final List<Article> forYou = [
  Article(
    category: 'News',
    title: 'World War Z cancelled, reportedly due to budget issues',
    description:
    ' The movie faced a ton of bumps in its development, but was officially cancelled, reportedly after the Chinese government banned films about zombies and ghosts. Brad Pitt has kept busy with his recent starring role in Quentin Tarantino\'s Once Upon a Time in Hollywood and the upcoming release of Ad Astra.',
    time: '30min ago',
    author: 'Sky News',
    image: 'Assets/1.jpg',
    authorImg: 'assets/skyNews.png',
  ),
  Article(
    category: 'Entertainment',
    title: 'Star Wars To Reveal Palpatine\'s Secrets Of The Sith',
    description:
    'A new canon Star Wars book will see Palpatine himself reveal the secrets of the Sith. At heart, Star Wars is the story of the light battling against the darkness. The champions of the light are the Jedi Knights, including iconic heroes such as Luke Skywalker and Rey. But the dark Lords of the Sith are undeniably the most powerful and fearsome characters of all.',
    time: '2hr ago',
    author: 'Spotify',
    image: 'Assets/2.jpg',
    authorImg: 'assets/spotify.png',
  ),
  Article(
    category: 'News',
    title: 'Gran Torino Star Regrets Film\'s Frequent Use of Asian Slurs ',
    description:
    'One of the stars of the 2008 film Gran Torino regrets its frequent use of anti-Asian slurs, which he says made anti-Asian racism more mainstream. Directed by Clint Eastwood, who also stars as the film\'s lead Walt Kowalski, Gran Torino follows a widowed Korean War veteran who is estranged from his family. Walt is also a curmudgeonly racist who directs his ire toward his Hmong-American neighbors, famously telling them, “Get off my lawn.”',
    time: '3hr ago',
    author: 'Sky News',
    image: 'Assets/3.jpg',
    authorImg: 'assets/skyNews.png',
  ),
  Article(
    category: 'News',
    title: 'Why Zack Snyder\'s "Faithful" King Arthur Movie Is Impossible',
    description:
    'Zack Snyder hinted one of his next movies will be a "faithful" adaptation of King Arthur, but that\'s not possible to do considering the many stories out there. The project is still in its earliest stages, and there have been no official announcements concerning it, only Snyder\'s word. However, there is already one massive problem with the idea of a "faithful" version of King Arthur: it is impossible to be faithful to the complex and varied Arthurian legends.',
    time: '1hr ago',
    author: 'Sky News',
    image: 'Assets/4.jpg',
    authorImg: 'assets/skyNews.png',
  ),
  Article(
    category: 'News',
    title: 'Cruella Is Repeating Disney\'s Biggest Live-Action Villain Mistake',
    description:
    'The first trailer for Disney’s Cruella is now out, and it shows that the studio is repeating its live-action villain mistake. The film industry has seen a lot of live-action versions of animated movies in recent years, and while some have earned the audience’s approval, as was the case of Guy Ritchie’s Aladdin, others haven’t performed as expected. Still, these ups and downs haven’t stopped Disney from producing more live-action versions of its animated classics, and the next one in line is Cruella.',
    time: '1hr ago',
    author: 'Sky News',
    image: 'Assets/5.jpg',
    authorImg: 'assets/skyNews.png',
  ),
];
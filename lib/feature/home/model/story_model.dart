class StoryModel {
  final String storyPhotoUrl;
  final String userPhotoUrl;
  final String userName;
  final String userSurname;

  StoryModel({
    required this.storyPhotoUrl,
    required this.userPhotoUrl,
    required this.userName,
    required this.userSurname,
  });

  static List<StoryModel> storiesList = [
    StoryModel(
      storyPhotoUrl: 'https://images.unsplash.com/photo-1611037114947-0b436af42ed9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
      userPhotoUrl: 'https://randomuser.me/api/portraits/women/72.jpg',
      userName: 'Linzi',
      userSurname: 'Coulson',
    ),
    StoryModel(
      storyPhotoUrl: 'https://images.unsplash.com/photo-1621412754530-113295cddbcf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      userPhotoUrl: 'https://randomuser.me/api/portraits/women/54.jpg',
      userName: 'Kiristin',
      userSurname: 'Riddle',
    ),
    StoryModel(
      storyPhotoUrl: 'https://images.unsplash.com/photo-1658480339269-359504721505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80',
      userPhotoUrl: 'https://randomuser.me/api/portraits/men/18.jpg',
      userName: 'Madelyn',
      userSurname: 'Sinclair',
    ),
    StoryModel(
      storyPhotoUrl: 'https://images.unsplash.com/photo-1658603458978-4a32b8cdadb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80',
      userPhotoUrl: 'https://randomuser.me/api/portraits/men/36.jpg',
      userName: 'Eliz',
      userSurname: 'Samton',
    ),
    StoryModel(
      storyPhotoUrl: 'https://images.unsplash.com/photo-1658592597637-ed0d674acd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
      userPhotoUrl: 'https://randomuser.me/api/portraits/women/63.jpg',
      userName: 'Teylor',
      userSurname: 'Aigt',
    ),
    StoryModel(
      storyPhotoUrl: 'https://images.unsplash.com/photo-1658609696153-48554c5cb381?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80',
      userPhotoUrl: 'https://randomuser.me/api/portraits/women/39.jpg',
      userName: 'Fred',
      userSurname: 'Pally',
    ),
  ];
}

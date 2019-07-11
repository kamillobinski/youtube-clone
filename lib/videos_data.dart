class Video {
  final String id;
  final String videoPreview;
  final String title;
  final String authorAvatar;
  final String authorName;
  final String subscribersCount;
  final String descriptionShort;
  final String descriptionFull;
  final String likes;
  final String dislikes;
  final String comments;
  final String views;

  const Video(
      {this.id,
      this.videoPreview,
      this.title,
      this.authorAvatar,
      this.authorName,
      this.subscribersCount,
      this.descriptionShort,
      this.descriptionFull,
      this.likes,
      this.dislikes,
      this.comments,
      this.views});
}

List<Video> videos = [
  const Video(
    id: '1',
    videoPreview: 'lib/images/flutter_widget_of_the_week.jpg',
    title: 'Expanded (Flutter Widget of the Week)',
    authorAvatar: 'lib/images/google_developers.png',
    authorName: 'Google Developers',
    subscribersCount: '1.9M',
    descriptionShort: 'Google Developers' + " • " + "69K views" + " • " + "1 year ago",
    likes: '1.1K',
    dislikes: '12',
    comments: '1',
    views: '69K'
  ),
  const Video(
    id: '2',
    videoPreview: 'lib/images/visual_twitter.jpg',
    title: '"Visual Twitter" programming project (web coding tips & tutorial)',
    authorAvatar: 'lib/images/techlead.jpg',
    authorName: 'TechLead',
    subscribersCount: '405K',
    descriptionShort: 'TechLead' + " • " + "26K views" + " • " + "1 day ago",
    likes: '1.1K',
    dislikes: '53',
    comments: '1',
    views: '27K',
  ),
  const Video(
    id: '3',
    videoPreview: 'lib/images/coding_is_not_difficult.png',
    title: 'Hour of Code - Bill Gates explains If statements',
    authorAvatar: 'lib/images/code_org.png',
    authorName: 'Code.org',
    subscribersCount: '261K',
    descriptionShort: 'Code.org' + " • " + "1M views" + " • " + "6 years ago",
    likes: '10K',
    dislikes: '302',
    comments: '1',
    views: '1M',
  ),
  const Video(
    id: '4',
    videoPreview: 'lib/images/was_windows_vista.jpg',
    title: 'Was Windows Vista THAT bad?',
    authorAvatar: 'lib/images/linus.jpg',
    authorName: 'Linus Tech Tips',
    subscribersCount: '8.8M',
    descriptionShort: 'Linus Tech Tips' + " • " + "3M views" + " • " + "1 year ago",
    likes: '87K',
    dislikes: '1.8K',
    comments: '1',
    views: '3M',
  ),
];
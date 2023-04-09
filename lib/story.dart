
class Story {
  // Properties
  String storyTitle;
  String choice1;
  String choice2;
  int choice1Destination;
  int choice2Destination;

  // Constructor
  Story({required this.storyTitle, required this.choice1, required this.choice2, required this.choice1Destination, required this.choice2Destination});

  int getChoice1Destination() {
    return choice1Destination;
  }

  int getChoice2Destination() {
    return choice2Destination;
  }
}
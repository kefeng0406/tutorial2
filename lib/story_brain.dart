import 'story.dart';

class StoryBrain {
  int _storyNumbers = 0;

  void restart() {
    _storyNumbers = 0;
  }

  bool get isStoryActive {
    return _storyNumbers < _storyData.length - 1;
  }

  // When storyNumber is 3, 4, 5 will return false, otherwise will return true.
  bool buttonShouldBeVisible() {
    if(_storyNumbers == 0) {
      return true;
    }
    else if(_storyNumbers == 1){
      return true;
    }
    else if(_storyNumbers == 2){
      return true;
    }
    else if(_storyNumbers == 3){
      return false;
    }
    else if(_storyNumbers == 4){
      return false;
    }
    else {
      return false;
    }
  }

  List<Story> _storyData = [
    //Story 0
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.',
        choice1Destination: 1,
        choice2Destination: 2),

    //Story 1
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.',
        choice1Destination: 1,
        choice2Destination: 2),

    //Story 2
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.',
        choice1Destination: 1,
        choice2Destination: 2),

    //Story 3
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: '',
        choice1Destination: 1,
        choice2Destination: 2),

    //Story 4
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: '',
        choice1Destination: 1,
        choice2Destination: 2),

    //Story 5
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '',
        choice1Destination: 1,
        choice2Destination: 2),
  ];

  String getStory() {
    return _storyData[_storyNumbers].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumbers].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumbers].choice2;
  }

  int get storyNumber => _storyNumbers;

  void nextStory(int choiceNumber) {
    //Story 0
    if (_storyNumbers == 0) {
      if (choiceNumber == 1) {
        _storyNumbers = 2;
      } else if (choiceNumber == 2) {
        _storyNumbers = 1;
      }
      //Story 1
    } else if (_storyNumbers == 1) {
      if (choiceNumber == 1) {
        _storyNumbers = 2;
      } else if (choiceNumber == 2) {
        _storyNumbers = 3;
      }
      //Story 2
    } else if (_storyNumbers == 2) {
      if (choiceNumber == 1) {
        _storyNumbers = 5;
      } else if (choiceNumber == 2) {
        _storyNumbers = 4;
      }
      //Story 3,4,5
    } else {
      restart();
    }
  }
}
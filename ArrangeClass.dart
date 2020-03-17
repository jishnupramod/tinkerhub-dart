import 'dart:io';

var mentors = new List();

class Arrange {
  var position;
  var fields = new List();
  var start_time;
  var duration;
  var end_time;

  void addStacks() {
    if(position == 'mentor') {
      print("Enter expertise: ");
      var field = stdin.readLineSync();
      fields.add(field);
    }
    else if(position == 'learner') {
      print("Enter interest: ");
      var field = stdin.readLineSync();
      fields.add(field);
    }
  }

  void setMentorOrLearner() {
    print("-------Choose your category-------\n1. Mentor\n2. Learner\n3. Exit\nChoice: ");
    position = stdin.readLineSync();
    if(position.trim() == '1')
      position = 'mentor';
    else if(position.trim() == '2')
      position = 'learner';
    else
        exit(0);
  }

  void setAvailableTime() {
    if(position == 'mentor') {
        print("Enter start time (Use 24 hr format and specify the start hour only): ");
        var start_str = stdin.readLineSync();
        start_time = int.parse(start_str);
        print("Enter available duration in hours: ");
        var dur_str = stdin.readLineSync();
        duration = int.parse(dur_str);
        end_time = start_time + duration;
    }
    else {
        print("This option is only for mentors\n");
    }
  }

  void getMentor(fields, start_time, end_time) {
    if(position == 'learner') {
        var flag = 0;
        for(final interest in fields) {
            for(final mentor in mentors) {
                if(start_time >= mentor.start_time && end_time <= mentor.end_time) {
                    for(final skill in mentor.fields) {
                        if(skill == interest) {
                            print("Mentor found!\n");
                            flag = 1;
                        }
                    }
                }
            }
        }
        if(flag == 0) {
            print("Mentor not found at specified time !\n");
        }
    }
    else {
        print("This option is only for learners\n");
    }
  }
}

void main() {
    while(true) {
        Arrange instance = Arrange();
        instance.setMentorOrLearner();
        if(instance.position == 'mentor') {
            print("Enter your top 3 skills\n");
            for(var i=0; i<3; ++i) {
                instance.addStacks();
            }
            instance.setAvailableTime();
            mentors.add(instance);
        }
        else if(instance.position == 'learner') {
            print("Enter top 3 skills to be learnt\n");
            for(var i=0; i<3; ++i) {
                instance.addStacks();
            }
            print("Enter start time: ");
            var time_str_begin = stdin.readLineSync();
            var time_begin = int.parse(time_str_begin);
            print("Enter end time: ");
            var time_str_end = stdin.readLineSync();
            var time_end = int.parse(time_str_end);
            instance.getMentor(instance.fields, time_begin, time_end);
        }
    }
}

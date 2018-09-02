class Story {
 String[][] story;
 int cards = 4;
 
 // create the story line
 Story() {
  story = new String[cards][4];
  story[0][0] = "What is your biological gender?";
  story[0][1] = "I'm a female.";
  story[0][2] = "I'm a male.";
  story[0][3] = "";
  story[1][0] = "What is your financial status?";
  story[1][1] = "I'm part of the lower-income class.";
  story[1][2] = "I'm part of the upper-income class.";
  story[1][3] = "I'm part of the middle-income class.";
  story[2][0] = "What is your education?";
  story[2][1] = "I'm a high school dropout.";
  story[2][2] = "I'm a high school graduate.";
  story[2][3] = "";
  story[3][0] = "During the course of your high school years, did you take part in any extracurricular activities?\n\nSome examples includes internships, work experiences, clubs, sports, etc.";
  story[3][1] = "I didn't do any extracurricular activities.";
  story[3][2] = "I did some extracurricular activities.";
  story[3][3] = "";
 }
 
 int getLength() {
   return cards;
 }
 
 String get (int a, int b) {
   return story[a][b];
 }
}

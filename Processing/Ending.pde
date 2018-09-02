class Ending {
  String[][] ending;

  // create the ending
  Ending() {
    ending = new String[9][2];
    ending[0][0] = "None available.";
    ending[0][1] = "* About 25% of female students will not graduate with a regular high school diploma in the standard, four-year time period.\n* More than 20% of school-age children live in poverty.\n* Low-income students (bottom 20%) are five times more likely to drop out of high school than high-income students (top 20%).";
    ending[1][0] = "* Children born into middle-income families have approximately equal chance of moving up or down the social pyramid when they become adults.";
    ending[1][1] = "* Low-income students (bottom 20%) are five times more likely to drop out of high school than high-income students (top 20%).* Income-based differences negatively affect the participation of extracurricular activities.\n* 33% of female dropouts reported that academic concerns, low attendance rates, sexual harassment, pregnancy and parenting responsibilities played a major role in their decision to leave school.";
    ending[2][0] = "* Students with a high school diploma are more likely to get hired for jobs.\n* Children born to the top 10% high-income families have an 82% chance of raising their income to the top 3% by their forties.\n* Females are able to find a career through volunteering work.";
    ending[2][1] = "* About 25% of female students will not graduate with a regular high school diploma in the standard, four-year time period.\n* Female students drop out of school due to their  experiences and opinions of their school and the lack of family support.\n* 33% of female dropouts reported that academic concerns, low attendance rates, sexual harassment, pregnancy and parenting responsibilities played a major role in their decision to leave school.";
    ending[3][0] = "* Children born into middle-income families have approximately equal chance of moving up or down the social pyramid when they become adults.\n* Students with a high school diploma are more likely to get hired for jobs.";
    ending[3][1] = "* Income-based differences negatively affects the participation of extracurricular activities.";
    ending[4][0] = "* Students with a high school diploma are more likely to get hired for jobs.\n* Children born to the top 10% high-income families have an 82% chance of raising their income to the top 3% by their forties.\n* Children born to the top 10% high-income families have an 82% chance of raising their income to the top 3% by their forties.";
    ending[4][1] = "* Not taking part in extracurricular activities can decrease chances of getting into a good college.\n* 33% of female dropouts reported that academic concerns, low attendance rates, sexual harassment, pregnancy and parenting responsibilities played a major role in their decision to leave school.\n* More than 20% of school-age children live in poverty.";
    ending[5][0] = "* Children born into middle-income families have approximately equal chance of moving up or down the social pyramid when they become adults.\n* Students with a high school diploma are more likely to get hired for jobs.";
    ending[5][1] = "* Lack of high school diploma guarantees lower pay wages and less job opportunities.";
    ending[6][0] = "* Children born to the top 10% high-income families have an 82% chance of raising their income to the top 3% by their forties.\n* Students with a high school diploma are more likely to get hired for jobs.";
    ending[6][1] = "None available";
    ending[7][0] = "* Children from higher-income families are able to use their connections to enter the workforce.";
    ending[7][1] = "None available";
    ending[8][0] = "* Children from higher-income families are able to use their connections to enter the workforce.";
    ending[8][1] = "None available";
  }

  String get (int a, int b) {
    return ending[a][b];
  }
}

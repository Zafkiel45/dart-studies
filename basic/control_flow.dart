void main() {
  // this seems JavaScript, nothing new.
  // the "final" keyword is new for me, study more about this.
  var favoriteManga = "Vagabond";
  var year = 2025;
  var favoriteMangaTop10 = [
    "Vagabond", 
    "Berserk", 
    "Tokyo Ghoul", 
    "Akame Ga Kill"
  ];
  
  if(favoriteManga == "Vagabond") {
    print("This is my favorite Manga!");
  } else {
    print("I probably like it, but it is not my favorite");
  };

  for(final manga in favoriteMangaTop10) {
    print(manga);
  };

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
}
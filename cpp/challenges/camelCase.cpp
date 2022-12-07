// problem: https://www.hackerrank.com/challenges/three-month-preparation-kit-camel-case/problem

#include <iostream>
#include <regex>
#include <string>

int main() {
  std::regex splitRegex("[A-Z]");
  std::string line;
  
  while (std::getline(std::cin, line)) {
    std::string operation = line.substr(0, 1);
    std::string type = line.substr(2, 1);
    std::string name = line.substr(4);

    // Split the name into a space-delimited list of words
    if (operation == "S") {
      std::string words = std::regex_replace(name, splitRegex, " $&");
      for (int i = 0; i < words.length(); i++) {
        words[i] = std::tolower(words[i]);
      }
      if(type == "M") {
          //std::remove(words[words.length-1]);
        words.pop_back();
        words.pop_back();
      }else if(type == "C"){
          words.erase(0, 1);
      }
      std::cout << words << std::endl;
    }

    // Combine the words into a camel case name
    else if (operation == "C") {
      std::string words = name;
      for (int i = 0; i < words.length(); i++) {
        if (words[i] == ' ') {
          words[i + 1] = std::toupper(words[i + 1]);
          words.erase(i, 1);
        }
      }
      if (type == "M") {
        words += "()";
      }else if(type == "C") {
          words[0] = std::toupper(words[0]);
      }
      std::cout << words << std::endl;
    }
  }
  return 0;
}

/*
Sample Input:
S;M;plasticCup()
C;V;mobile phone
C;C;coffee machine
S;C;LargeSoftwareBook
C;M;white sheet of paper
S;V;pictureFrame

Sample Output
plastic cup
mobilePhone
CoffeeMachine
large software book
whiteSheetOfPaper()
picture frame
*/

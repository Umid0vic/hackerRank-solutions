// problem: https://www.hackerrank.com/challenges/c-tutorial-stringstream/problem

#include <iostream>
#include <vector>
#include <sstream>

using namespace std;

vector<int> parseInts(string str) {
    vector<int> numbers;
    int num;
    stringstream ss(str);
    
    while(ss >> num) {
        numbers.push_back(num);
         // If the next character is a comma, ignore it
        if (ss.peek() == ',')
            ss.ignore();
    }
    
    return numbers;
}

int main() {
    string str;
    vector<int> numbers;
    
    cin >> str;
    numbers = parseInts(str);
    
    for (int i = 0; i < numbers.size(); i++) {
        cout << numbers[i] << endl;
    }
}
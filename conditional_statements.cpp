// problem: https://www.hackerrank.com/challenges/c-tutorial-conditional-if-else/problem

#include <iostream>

using namespace std;

int main(){
    int number = 0;
    
    cin >> number;
    if(number < 1){
        cout << "Smaller than 1";
    }else if(number > 9){
        cout << "Greater than 9";
    }else{
        switch (number) {
        case 1:
            cout << "one";
            break;
        case 2:
            cout << "two";
            break;
        case 3:
            cout << "three";
            break;
        case 4:
            cout << "four";
            break;
        case 5:
            cout << "five";
            break;
        case 6:
            cout << "six";
            break;
        case 7:
            cout << "seven";
            break;
        case 8:
            cout << "eight";
            break;
        case 9:
            cout << "nine";
            break;
        default:
            cout << "invalid input";
            break;
        }
    }
    return 0;
}
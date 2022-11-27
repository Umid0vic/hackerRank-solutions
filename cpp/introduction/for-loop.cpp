// problem: https://www.hackerrank.com/challenges/c-tutorial-for-loop/problem

#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    // Complete the code.
    int a, b;
    string num[] = {"one","two","three","four","five","six","seven","eight","nine"};
    cin >> a >> b;
    
    if (a > b) {
        cout << "invalid input";
    } else {
      for(int n = a; n <= b; n++){
        if(n >= 1 && n <= 9 ) {
          cout<<num[n-1]<<endl;
        }
        else if (n % 2 == 0) {
          cout<<"even"<<endl;
        } 
        else {
          cout<<"odd"<<endl;
        }
      }
    }
    return 0;
}
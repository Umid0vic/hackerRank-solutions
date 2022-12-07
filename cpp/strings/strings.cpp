// problem: https://www.hackerrank.com/challenges/c-tutorial-strings/problem

#include <iostream>
#include <string>
using namespace std;

int main() {
    string a, b, c, tempA;
    cin >> a >> b;
    
    cout << a.size() << " " << b.size() << endl;
    cout << a+b << endl;
    
    tempA = a;
    a[0] = b[0];
    b[0] = tempA[0];
    c = a + " " + b;
    cout << c;
  
    return 0;
}
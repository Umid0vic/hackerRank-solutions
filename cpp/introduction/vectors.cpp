//problem: https://www.hackerrank.com/challenges/variable-sized-arrays/problem

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>

using namespace std;

int main() {
  /* Enter your code here. Read input from STDIN. Print output to STDOUT */
  int n, q;
  cin >> n >> q;
  vector<vector<int>> a;
    
  for (int i{}; i < n; i++) {
    int length;
    vector<int> v;
    cin >> length;
    
    for (int j{}; j < length; j++) {
        int element;
        cin >> element;
        v.push_back(element);
    }
    a.push_back(v);
  }
    
  for (int i{}; i < q; i++) {
    int row, column;
    cin >> row >> column;
    cout << a[row][column] << endl;
  }
  return 0;
}
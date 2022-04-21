# C-to-MIPS-Assembly

## Recursive Function C++ code:
```
// A C++ program to demonstrate working of
// recursion
#include <bits/stdc++.h>
using namespace std;
void printFun(int test)
{
 if (test < 1)
 return;
 else {
 cout << test << " ";
 printFun(test - 1); // statement 2
 cout << test << " ";
 return;
 }
}
// Driver Code
int main()
{
 int test = 4;
 printFun(test);
}
```

## Find Max Value in Array C++ code:
```
#include<iostream>
using namespace std;
int largest(int arr[], int n)
{
 int i;

 // Initialize maximum element
 int max = arr[0];
 // Traverse array elements
 // from second and compare
 // every element with current max
 for (i = 1; i < n; i++)
 if (arr[i] > max)
 max = arr[i];
 return max;
}
// Driver Code
int main()
{
 int arr[] = {10, 324, 45, 90, 9808};
 int n = 5;
 cout << "Largest in given array is "
 << largest(arr, n);
 return 0;
}
```

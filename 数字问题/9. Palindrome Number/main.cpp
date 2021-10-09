#include <iostream>
#include <vector>

using namespace std;

bool isPalindrome(int x) {
    if (x < 0) return false;
    if (x < 10)return true;
    vector<int> nums(20, 0);
    int i = 0;
    while (x) {
        nums[i] = x % 10;
        x = x / 10;
        i++;
    }
//    cout << i <<endl;
//    for(auto& num:nums){
//        cout << num <<" ";
//    }
    i--;

    for (int j = 0; j < i / 2 + 1; ++j) {
        if (nums[j] != nums[i - j]) {
            return false;
        }
    }
    return true;
}

int main() {
    isPalindrome(121);
}

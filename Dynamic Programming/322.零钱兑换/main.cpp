#include <iostream>
#include <vector>
using namespace std;
//求解最优子结构
//如何列出正确的状态转移方程？
//1、确定 base case ，在凑零钱里就是剩余金额为0
//2、确定状态，也就是原问题和子问题之间会变化的变量，在本题就是目标金额amount
//3、确定选择，也就是导致状态发生变化的行为，本题中就是选择了硬币之后导致amount变少
//4、明确dp数组的定义，对于本题，dp(n):目标金额n所需的最小金额数目
int coinChange(vector<int>& coins, int amount) {
    vector<int>dp(amount+1,amount+1);
    dp[0] = 0;
    for(int i=0;i<dp.size();++i){
        for(auto coin:coins){
            if (i-coin<0) continue;
            dp[i] = min(dp[i],dp[i-coin]+1);
        }
    }
    return (dp[amount] == amount+1)?-1:dp[amount];
}





int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}

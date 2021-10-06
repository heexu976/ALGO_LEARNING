#include <iostream>
#include <vector>

using namespace std;
//    动态规划一般形式就是求最值
//    求解动态规划的核心问题是穷举
//    优点是可以避免重叠子问题（递归求解的缺点）
//    动态规划存在最优子结构
//    目标：写出正确的状态转移方程
//    思维框架：base case -> 明确状态 -> 明确选择 -> 定义dp数组/函数的意义

//    斐波那契的递归求解
int fib0(int N) {
    if (N == 1 || N == 2) return 1;
    return fib0(N - 1) + fib0(N - 2);
}

//    递归问题时间复杂度的计算：子问题个数乘以解决一个子问题的时间
//    斐波那契的递归树是一个二叉树，显然递归解法的时间复杂度为 ： O(2^n)
//    所以要运用动态规划来消除重叠的子问题

//    带备忘录的递归解法：
//    把解决的子问题放到备忘录中，每次遇到去备忘录查一下，这样时间就节省下来了
//    一般使用数据来做备忘录，也可以使用哈希表
//    时间复杂度为O(n)
int helper(vector<int> &memo, int n) {
    if (n == 1 || n == 2) return 1;
    if (memo[n] != 0) return memo[n];
    memo[n] = helper(memo, n - 1) + helper(memo, n - 2);
    return memo[n];
}

int fib1(int N) {
    if (N < 1) return 0;
    vector<int> memo(N + 1, 0);
    return helper(memo, N);
}

//    备忘录是一种自顶向下的方法，而动态规划是自底向上的
//    把备忘录拿出来叫做DP table，来完成自底向下
//    下面是dp数组的迭代解法

int fib2(int N) {
    if (N == 0)return 0;
    if (N == 1) return 1;
    vector<int> dp(N + 1, 0);
    dp[1] = 1;
    dp[2] = 1;
    for (int i = 3; i <= N; i++) {
        dp[i] = dp[i - 1] + dp[i - 2];
    }
    return dp[N];
}


int main() {
    int test = 10;
    // cout << fib0(test) << endl;
    cout << fib2(test) << endl;
    return 0;
}

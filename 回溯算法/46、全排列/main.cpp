/* *解决一个回溯问题，实际上是一个决策树的遍历过程
 * 思考三个问题：
 * 1、路径：已作出的选择
 * 2、选择列表：当前可做的选择
 * 3、结束条件：达到决策树的底层
 * 模板：
 * result = []
   def backtrack(路径, 选择列表):
   if 满足结束条件:
        result.add(路径)
        return
    for 选择 in 选择列表:
        做选择
        backtrack(路径, 选择列表)
        撤销选择
 *
 * 核心就是循环里的递归，在递归之前做选择，在递归之后撤销选择
 */

/*
 * 全排列问题：
 * 先画出决策树，回溯函数backtrack()，就像是一个指针，在树上游走，每条路径走到底就是一个全排列
 *
 * 遍历一个树的模板：
 * void traverse(TreeNode root) {
    for (TreeNode child : root.childern)
        // 前序遍历需要的操作
        traverse(child);
        // 后序遍历需要的操作
    }
 *
 * 前序遍历就是在渐入某个节点的那个时间点前执行操作后序遍历就是在离开某个节点后的时间点执行操作
 * so，在递归前做出选择，在递归后撤销操作，就能正确得到每个节点的选择列表和路径
 */
#include <iostream>
#include <vector>
using namespace std;

// 这个方法有点慢
//void backtrack(vector<vector<int>> &res,vector<int> &nums,vector<int> track){
//    if (track.size() == nums.size()){
//        res.push_back(track);
//        return;
//    }
//    for(int i=0;i<nums.size();i++){
//        if(std::find(track.begin(),track.end(),nums[i]) !=track.end()) continue;
//        track.push_back(nums[i]);
//        backtrack(res,nums,track);
//        track.pop_back();
//    }
//}
//vector<vector<int>> permute(vector<int>& nums) {
//    vector<vector<int>> res;
//    vector<int> track;
//    backtrack(res,nums,track);
//    return res;
//}

void backtrack(vector<vector<int>> &res,vector<int>&out,int first,int len){
    if (first==len){
        res.push_back(out);
        return;
    }
    for(int i=first;i<len;i++){
        swap(out[i],out[first]);
        backtrack(res,out,first+1,len);
        swap(out[i],out[first]);
    }
}

vector<vector<int>> permute(vector<int>& nums){
    vector<vector<int>> res;
    backtrack(res,nums,0,nums.size());
    return res;
 }

int main() {
    vector<int> nums = {1,2,3,4,5};
    //permute(nums);
    for(auto num:permute(nums)){
        for(auto re:num){
            cout << re <<" ";
        }
        cout<<endl;
    }
    return 0;
}

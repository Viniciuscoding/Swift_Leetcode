/*
Maximum Product Subarray

Given an integer array nums, find the contiguous subarray within an array (containing at least one number) 
which has the largest product.

Example 1:

Input: [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.

Example 2:

Input: [-2,0,-1]
Output: 0
Explanation: The result cannot be 2, because [-2,-1] is not a subarray.

*/

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var back = nums
        back.reverse()
        var front = nums
        
        for i in 1..<nums.count {
            if front[i-1] == 0 {
                front[i] *= 1  
            } else {
                front[i] *= front[i-1]
            }
            
            if back[i-1] == 0 {
                back[i] *= 1
            } else {
                back[i] *= back[i-1]
            }
    
        }

        return (front + back).max()!
    }
}

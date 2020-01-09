/*
Plus One

Given a non-empty array of digits representing a non-negative integer, plus one to the integer.

The digits are stored such that the most significant digit is at the head of the list, and each element in the array
contain a single digit.

You may assume the integer does not contain any leading zero, except the number 0 itself.

Example 1:
Input: [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.

Example 2:
Input: [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
*/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        // MY SOLUTION
        var my_digits: Array = digits // digits is let so I need to create a var array
        var counted: Int = digits.count
        
        for i in stride(from: counted - 1, to: -1, by: -1) {
            if my_digits[i] < 9 {
                my_digits[i] += 1
                return my_digits
            }
            my_digits[i] = 0
        }
        return [1] + [Int](repeating: 0, count: counted)
    }
}

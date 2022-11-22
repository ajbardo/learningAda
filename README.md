# learningAda A0.1-E0.3
1 - Abstract v0.1 - First approach  
2 - Exercises v0.3 - Added 2.1 - Two Sum  
2.1 - Two Sum  v1.1 - Added from https://leetcode.com/problems/two-sum/  
2.9 - Palindrome Number v1.0 - Added from https://leetcode.com/problems/palindrome-number/    
## 1 - Abstract
Project to store the results of the learning path from https://leetcode.com but using ADA programming language.  
As reference for the ADA programming language development will be used https://learn.adacore.com/index.html.  

## 2 - Exercises
### 2.1 Two Sum  
### https://leetcode.com/problems/two-sum/  
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.  
You may assume that each input would have exactly one solution, and you may not use the same element twice.  
You can return the answer in any order.  

Example 1:  

Input: nums = [2,7,11,15], target = 9  
Output: [0,1]  
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].  
Example 2:  

Input: nums = [3,2,4], target = 6  
Output: [1,2]  
Example 3:  

Input: nums = [3,3], target = 6  
Output: [0,1]  

Constraints:  

2 <= nums.length <= 104  
-109 <= nums[i] <= 109  
-109 <= target <= 109  
Only one valid answer exists.  
  
Test data:  
array10 := (9, 5, 5, 6, 2, 3, 4, 7, 6, 9);  

Expected result:  
array2 := (1,4)  

Obtained data:  
array2 := (1,4)  
Conclusion: Static test successfully passed    
  
    
  
### 2.9 Palindrome Number
### https://leetcode.com/problems/palindrome-number/
Given an integer x, return true if x is a palindrome, and false otherwise.  
Example 1:  
  
Input: x = 121  
Output: true  
Explanation: 121 reads as 121 from left to right and from right to left.  
Example 2:  
Input: x = -121  
Output: false  
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.  
Example 3:  
Input: x = 10  
Output: false  
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
Constraints:
-231 <= x <= 231 - 1  
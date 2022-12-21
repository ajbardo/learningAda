# learningAda A0.1-E0.3
* 1 - Abstract v0.1 - First approach  
* 2 - Exercises v0.3 - Added 2.1 - Two Sum
  * 2.1 - Two Sum  v1.1 - Added from https://leetcode.com/problems/two-sum/
  * 2.9 - Palindrome Number v1.0 - Added from https://leetcode.com/problems/palindrome-number/   
  * 2.13 - Roman to Integer  v1.1 -  Added from https://leetcode.com/problems/roman-to-integer/
  * 2.14 - Longest Common Prefix v1.0 - Added from https://leetcode.com/problems/longest-common-prefix/
  * 2.20 - Valid Parentheses  v1.0 - Added from https://leetcode.com/problems/valid-parentheses/
  * 2.21 - Merge Two Sorted Lists vX.Y - Added from https://leetcode.com/problems/merge-two-sorted-lists/
***
## 1 - Abstract
Project to store the results of the learning path from https://leetcode.com but using ADA programming language.  
As reference for the ADA programming language development will be used https://learn.adacore.com/index.html.  
***
## 2 - Exercises
### 2.1 Two Sum  
#### https://leetcode.com/problems/two-sum/  
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
#### https://leetcode.com/problems/palindrome-number/
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


### 2.13 Roman to Integer
#### https://leetcode.com/problems/roman-to-integer/
Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

I can be placed before V (5) and X (10) to make 4 and 9. 
X can be placed before L (50) and C (100) to make 40 and 90. 
C can be placed before D (500) and M (1000) to make 400 and 900.
Given a roman numeral, convert it to an integer.

 
Example 1:

Input: s = "III"
Output: 3
Explanation: III = 3.
Example 2:

Input: s = "LVIII"
Output: 58
Explanation: L = 50, V= 5, III = 3.
Example 3:

Input: s = "MCMXCIV"
Output: 1994
Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 

Constraints:

1 <= s.length <= 15
s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
It is guaranteed that s is a valid roman numeral in the range [1, 3999].

### 2.14 Longest Common Prefix
#### https://leetcode.com/problems/longest-common-prefix/
Write a function to find the longest common prefix string amongst an array of strings.  

If there is no common prefix, return an empty string "".  

Example 1:    
Input: strs = ["flower","flow","flight"]  
Output: "fl"  

Example 2:    
Input: strs = ["dog","racecar","car"]  
Output: ""  
Explanation: There is no common prefix among the input strings.

### 2.20 Valid Parentheses  
#### https://leetcode.com/problems/valid-parentheses/
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.  

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.
 

Example 1:

Input: s = "()"
Output: true
Example 2:

Input: s = "()[]{}"
Output: true
Example 3:

Input: s = "(]"
Output: false
 

Constraints:

1 <= s.length <= 104
s consists of parentheses only '()[]{}'.


### 2.21 Merge Two Sorted Lists
#### https://leetcode.com/problems/merge-two-sorted-lists/
Easy
Companies
You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

 

Example 1:

1 -> 2 -> 4  
1 -> 3 -> 4  
1 -> 1 -> 2 -> 3 -> 4 -> 4

Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]
Example 2:

Input: list1 = [], list2 = []
Output: []
Example 3:

Input: list1 = [], list2 = [0]
Output: [0]
 
<!-- Readme -->
# learningAda A0.1-E0.3
* 1 - Abstract v0.1 - First approach  
* 2 - Exercises v0.3 - Added 2.1 - Two Sum
  * 2.1. Two Sum  v1.1 - https://leetcode.com/problems/add-two-numbers/  
  * 2.2. Add Two Numbers - https://leetcode.com/problems/two-sum/
  * 2.3. Longest Substring Without Repeating Characters - https://leetcode.com/problems/longest-substring-without-repeating-characters/
  * 2.4. Median-of-two-sorted-arrays - https://leetcode.com/problems/median-of-two-sorted-arrays/ 
  * 2.5. Longest Palindromic Substring - https://leetcode.com/problems/longest-palindromic-substring/
  * 2.6. Zigzag Conversion - https://leetcode.com/problems/zigzag-conversion/description/
  * 2.9. Palindrome Number - https://leetcode.com/problems/palindrome-number/   
  * 2.13. Roman to Integer  - https://leetcode.com/problems/roman-to-integer/
  * 2.14. Longest Common Prefix - https://leetcode.com/problems/longest-common-prefix/
  * 2.20. Valid Parentheses  - https://leetcode.com/problems/valid-parentheses/
  * 2.21. Merge Two Sorted Lists - https://leetcode.com/problems/merge-two-sorted-lists/
  * 2.27. Remove Element - https://leetcode.com/problems/remove-element/
  * 2.35. Search Insert Position - https://leetcode.com/problems/search-insert-position/
  * 2.58. Length of Last Word - https://leetcode.com/problems/length-of-last-word/
  * 2.66. Plus One - https://leetcode.com/problems/plus-one/
  * 2.67. Add Binary - https://leetcode.com/problems/add-binary/
  * 2.69. Sqrt(x) - https://leetcode.com/problems/sqrtx/  
  * 2.70. Climbing Stairs - https://leetcode.com/problems/climbing-stairs/
  * 2.94. Binary Tree Inorder Traversal - https://leetcode.com/problems/binary-tree-inorder-traversal/
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
  
### 2.2. Add Two Numbers
#### https://leetcode.com/problems/add-two-numbers/
Medium  

You are given two non-empty linked lists representing two non-negative integers.  
he digits are stored in reverse order, and each of their nodes contains a single digit.   
Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.  

Example 1:


![addtwonumber1.jpg](https://github.com/ajbardo/learningada/images/addtwonumber1.jpg)

Input: l1 = [2,4,3], l2 = [5,6,4]  
Output: [7,0,8]  
Explanation: 342 + 465 = 807.  

Example 2:  

Input: l1 = [0], l2 = [0]  
Output: [0]  

Example 3:  

Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]  
Output: [8,9,9,9,0,0,0,1]  


Constraints:  

    The number of nodes in each linked list is in the range [1, 100].  
    0 <= Node.val <= 9  
    It is guaranteed that the list represents a number that does not have leading zeros.  

### 2.3. Longest Substring Without Repeating Characters
#### https://leetcode.com/problems/longest-substring-without-repeating-characters/
Medium  
Given a string s, find the length of the longest substring without repeating characters.   

  

Example 1:   
  
Input: s = "abcabcbb"  
Output: 3  
Explanation: The answer is "abc", with the length of 3.  
Example 2:  

Input: s = "bbbbb"  
Output: 1  
Explanation: The answer is "b", with the length of 1.    
Example 3:   

Input: s = "pwwkew"  
Output: 3  
Explanation: The answer is "wke", with the length of 3.  
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.  
 

Constraints:  

0 <= s.length <= 5 * 104  
s consists of English letters, digits, symbols and spaces.  
  
  
### 2.4. Median-of-two-sorted-arrays
#### https://leetcode.com/problems/median-of-two-sorted-arrays/  
Hard  
Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.  

The overall run time complexity should be O(log (m+n)).  

 

Example 1:  

Input: nums1 = [1,3], nums2 = [2]  
Output: 2.00000  
Explanation: merged array = [1,2,3] and median is 2.  

Example 2:  

Input: nums1 = [1,2], nums2 = [3,4]  
Output: 2.50000  
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.  
 

### 2.5. Longest Palindromic Substring
#### https://leetcode.com/problems/longest-palindromic-substring/
Medium  
Given a string s, return the longest palindromic substring in s.  

Example 1:  

Input: s = "babad"  
Output: "bab"  
Explanation: "aba" is also a valid answer.  

Example 2:  
Input: s = "cbbd"  
Output: "bb"  

### 2.6. Zigzag Conversion
#### https://leetcode.com/problems/zigzag-conversion/
Medium
The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)  

P   A   H   N  
A P L S I I G  
Y   I   R  
And then read line by line: "PAHNAPLSIIGYIR"  

Write the code that will take a string and make this conversion given a number of rows:  

Example 1:  

Input: s = "PAYPALISHIRING", numRows = 3  
Output: "PAHNAPLSIIGYIR"  
Example 2:  

Input: s = "PAYPALISHIRING", numRows = 4  
Output: "PINALSIGYAHRPI"  
Explanation:  
P     I    N  
A   L S  I G  
Y A   H R  
P     I  
Example 3:  

Input: s = "A", numRows = 1  
Output: "A"  

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


### 2.26 Remove Duplicates from Sorted Array
#### https://leetcode.com/problems/remove-duplicates-from-sorted-array/
Note -> Instead of removing the elements it will replace them with 0 in order to use fixed length arrays of ADA.  
Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.

Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

Return k after placing the final result in the first k slots of nums.

Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

Example 1:

Input: nums = [1,1,2]
Output: 2, nums = [1,2,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
Example 2:

Input: nums = [0,0,1,1,1,2,2,3,3,4]
Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
 

Constraints:

1 <= nums.length <= 3 * 104
-100 <= nums[i] <= 100
nums is sorted in non-decreasing order.
 

### 2.27 Remove Element
#### https://leetcode.com/problems/remove-element/
Easy
Note : Elements removed will be replaced instead with 0 to match the array length.  
Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.

Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

Return k after placing the final result in the first k slots of nums.

Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

Example 1:

Input: nums = [3,2,2,3], val = 3
Output: 2, nums = [2,2,_,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 2.
It does not matter what you leave beyond the returned k (hence they are underscores).
Example 2:

Input: nums = [0,1,2,2,3,0,4,2], val = 2
Output: 5, nums = [0,1,4,0,3,_,_,_]
Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
Note that the five elements can be returned in any order.
It does not matter what you leave beyond the returned k (hence they are underscores).

###  2.35. Search Insert Position
#### https://leetcode.com/problems/search-insert-position/
Easy
Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.

Example 1:  
Input: nums = [1,3,5,6], target = 5  
Output: 2  

Example 2:  
Input: nums = [1,3,5,6], target = 2  
Output: 1  

Example 3:  
Input: nums = [1,3,5,6], target = 7  
Output: 4  
 

###  2.58. Length of Last Word
#### https://leetcode.com/problems/length-of-last-word/
Given a string s consisting of words and spaces, return the length of the last word in the string.

A word is a maximal 
substring
 consisting of non-space characters only.

 

Example 1:

Input: s = "Hello World"  
Output: 5  
Explanation: The last word is "World" with length 5.  
Example 2:  

Input: s = "   fly me   to   the moon  "  
Output: 4  
Explanation: The last word is "moon" with length 4.  
Example 3:  

Input: s = "luffy is still joyboy"  
Output: 6  
Explanation: The last word is "joyboy" with length 6.  
 

###  2.66. Plus One
#### https://leetcode.com/problems/plus-one/
Easy  
You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.

 

Example 1:
Input: digits = [1,2,3]  
Output: [1,2,4]  
Explanation: The array represents the integer 123.  
Incrementing by one gives 123 + 1 = 124.  
Thus, the result should be [1,2,4].  

Example 2:  
Input: digits = [4,3,2,1]  
Output: [4,3,2,2]    
Explanation: The array represents the integer 4321.  
Incrementing by one gives 4321 + 1 = 4322.  
Thus, the result should be [4,3,2,2].  

Example 3:  
Input: digits = [9]  
Output: [1,0]  
Explanation: The array represents the integer 9.  
Incrementing by one gives 9 + 1 = 10.  
Thus, the result should be [1,0].  

###  2.67. Add Binary
#### https://leetcode.com/problems/add-binary/
Easy  
note -> we are gonna use a bounded string, if the binary number is bigger than the legnth of the string then the extra values will be lost.  
Given two binary strings a and b, return their sum as a binary string.

 

Example 1:

Input: a = "11", b = "1"
Output: "100"
Example 2:

Input: a = "1010", b = "1011"
Output: "10101"

###  2.69. Sqrt(x)
#### https://leetcode.com/problems/sqrtx/  
Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

You must not use any built-in exponent function or operator.

For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
 

Example 1:

Input: x = 4
Output: 2
Explanation: The square root of 4 is 2, so we return 2.
Example 2:

Input: x = 8
Output: 2
Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.

###  2.70. Climbing Stairs
#### https://leetcode.com/problems/climbing-stairs/
Easy  
You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 


### 2.94. Binary Tree Inorder Traversal
#### https://leetcode.com/problems/binary-tree-inorder-traversal/
Easy  
Given the root of a binary tree, return the inorder traversal of its nodes' values.

Example 1:  
Input: root = [1,null,2,3]  
Output: [1,3,2]  

Example 2:    
Input: root = [1,2,3,4,5,6,null]  
Output: [4,2,5,1,6,3]--example from https://leetcode.com/problems/binary-tree-inorder-traversal/solutions/127563/binary-tree-inorder-traversal/  
  
Example 3:  
Input: root = [1]  
Output: [1]  
 

Constraints:

The number of nodes in the tree is in the range [0, 100].  
-100 <= Node.val <= 100
 

Follow up: Recursive solution is trivial, could you do it iteratively?


















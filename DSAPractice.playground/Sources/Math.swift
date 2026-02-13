//
//  CollatzConjecture.swift
//  
//
//  Created by Alexia Nunez on 2026-02-05.
//

public struct Math {
    /*
     Given a positive number S, find the largest number n such that the sum
     12 + 22 + 32 + ... + n2 is less than or equal to S.
     */
    public static func findLargestNumber(n: Int) -> Int {
        var totalSoFar: Int = 0
        var number = 1
        
        while(totalSoFar + (number * number) <= n) {
            totalSoFar += number * number
            number += 1
        }
        
        return number - 1
    }
    
    public static func collatzConjecture(n: Int) -> [Int] {
        guard n > 0 else { return [] }
        var steps = [n]
        var current = n
        while current > 1 {
            current = current % 2 == 0 ? current / 2 : 3 * current + 1
            steps.append(current)
        }
        
        return steps
    }
    
    public static func factorial(n: Int) -> Int {
        var factorial: Int = 1
        var index: Int = 1
        while index <= n {
            factorial = factorial * index
            index += 1
        }
        
        return factorial
    }
    
    public static func fibonnaci(n: Int) -> Int {
        // if n is less than 2, return 1
        guard n > 2 else { return n }
        
        // set up values to hold previous + current variables, as well as an index
        var previous: Int = 0
        var current: Int = 1
        // Starting at 2
        var index = 2
        
        while (index <= n) {
            let next: Int = previous + current
            previous = current
            current = next
            index += 1
        }
        
        return current
    }
    
    public static func fizzBuzz(_ n: Int) -> [String] {
        var answer: [String] = []
        for i in 1...n {
            if i % 15 == 0 {
                answer.append("FizzBuzz")
            } else if i % 3 == 0 {
                answer.append("Fizz")
            } else if i % 5 == 0 {
                answer.append("Buzz")
            } else {
                answer.append("\(i)")
            }
        }
        return answer
    }
    
    /*
     class Solution {
     public:
         int digitSum(int n) {
             int sum = 0;
             while (n > 0) {
                 sum += n % 10;
                 n /= 10;
             }
             return sum;
         }
         
         int magicNumber(int n) {
             while (n > 9) {
                 n = digitSum(n);
             }
             if (n < 10) {
                 return n;
             }
         }
     };
     */
    
    public static func tribonnaci(n: Int) -> Int {
        guard n > 2 else { return n }
        
        var previous2: Int = 0
        var previous: Int = 1
        var current: Int = 1
        var index: Int = 3
        
        while (index <= n) {
            let next = previous2 + previous + current
            previous2 = previous
            previous = current
            current = next
            index += 1
        }
        
        return current
    }
    
    public static func twoSumIndexes(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            let complement = target - num

            if let found = hashMap[complement] {
                return [found, index]
            } else {
                hashMap[num] = index
            }
        }
        
        return []
    }
    
    public static func maxValNumAndOfOccurrences(in values: [Int]) -> [Int] {
        var maxVal: Int = values[0]
        var count: Int = 0
        
        for val in values {
            if val > maxVal {
                maxVal = val
                count = 1
            } else if val == maxVal {
                count += 1
            }
        }
        
        return [maxVal, count]
    }
}

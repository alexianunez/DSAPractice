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
}

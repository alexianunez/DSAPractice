//
//  Arrays.swift
//  
//
//  Created by Alexia Nunez on 2026-02-05.
//


//
//  Arrays.swift
//  
//
//  Created by Alexia Nunez on 2026-02-05.
//

public struct Arrays {
    public static func lowerBoundForSortedArray(nums: [Int], value: Int) -> Int {
        // First, establish the index
        var index: Int = 0
        // next, iterate through each and check if the value is greater or equal than `value`
        
        for num in nums {
            if num >= value {
                return index
            }
            // If we don't find the index, increase the index and try again
            index += 1
        }
        
        // if no answer was found, return the end index
        return nums.count
    }
}

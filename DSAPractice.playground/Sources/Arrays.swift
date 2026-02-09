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
    public static func binarySearch(_ array: [Int], _ value: Int) -> Int? {
        guard !array.isEmpty else { return nil }
        
        // Define our two pointers
        var left: Int = 0
        var right: Int = array.count - 1
        
        // While the left pointer is less than or equal to the right pointer, we loop. This stops when they collide, meaning there's no more diving + conquering to do
        while left <= right {
            //  Get the midpoint
            let middleIndex = (left + right) / 2
            // Get the value for the midpoint
            let middleValue = array[middleIndex]
            
            if middleValue > value {
                // if the middleValue is greater than the value we're looking for (ex: middleValue=10 but we're looking for value=4), we move the right pointer down to middleIndex - 1 since it could be to the left of middleValue
                right = middleIndex - 1
            } else if middleValue < value {
                left = middleIndex + 1
                // If the middleValue is less than the value we're looking for (ex: middleValue=10 but we're looking for value=14), we move the left pointer up to middleIndex + 1
                
            } else {
                return middleIndex
            }
        }
        
        return nil
    }
    
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

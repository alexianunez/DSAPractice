//
//  CollatzConjecture.swift
//  
//
//  Created by Alexia Nunez on 2026-02-05.
//

struct Math {
    static func collatzConjecture(n: Int) -> [Int] {
        guard n > 0 else { return [] }
        var steps = [n]
        var current = n
        while current > 1 {
            current = current % 2 == 0 ? current / 2 : 3 * current + 1
            steps.append(current)
        }
        return steps
    }
}

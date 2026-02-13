//
//  Loops.swift
//  
//
//  Created by Alexia Nunez on 2026-02-13.
//

public struct Loops {
    public static func printStars(_ n: Int) {
        var str = ""
        var index = 1
        
        while (index <= n) {
            str.append("*")
            print(str)
            index += 1
        }
    }
}

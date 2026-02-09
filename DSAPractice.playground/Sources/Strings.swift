//
//  Palindrome.swift
//  
//
//  Created by Alexia Nunez on 2026-02-04.
//

import Foundation

extension String {
    public func isPalindrome() -> Bool {
        let input = self.sanitizedString()
        guard !input.isEmpty else {
            return false
        }
        
        var left = input.startIndex
        var right = input.index(before: input.endIndex)
        
        while (left < right) {
            if input[left] != input[right] {
                return false
            }
            
            left = input.index(after: left)
            right = input.index(before: right)
        }

        return true
    }

    private func sanitizedString() -> String {
        // TODO: - replace with regex
        return self
            .lowercased()
            .trimmingCharacters(
                in: CharacterSet.whitespacesAndNewlines
            )
            .replacingOccurrences(of: ",", with: "")
            .replacingOccurrences(of: "'", with: "")
            .replacingOccurrences(of: ".", with: "")
            .replacingOccurrences(of: " ", with: "")
    }
}

extension String {
    public static func longestCommonPrefix(s1: String, s2: String) -> String {
        let n = s1.count < s1.count ? s1.count : s2.count
        var commonPrefix: String = ""
        var i: Int = 0
        while (i < n) {
            let s1Index = s1.index(s1.startIndex, offsetBy: i)
            let s2Index = s2.index(s2.startIndex, offsetBy: i)
            if s1[s1Index] != s2[s2Index] {
                break
            }
            
            commonPrefix.append(s1[s1Index])
            i += 1
        }
        
        return commonPrefix
    }
}


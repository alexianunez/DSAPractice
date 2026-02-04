//
//  Palindrome.swift
//  
//
//  Created by Alexia Nunez on 2026-02-04.
//

import Foundation

extension String {
    func isPalindrome() -> Bool {
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


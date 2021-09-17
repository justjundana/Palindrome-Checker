//
//  Palindrome.swift
//  Palindrome Checker
//
//  Created by Jundana Al-Basyir on 17/09/21.
//

import Foundation

struct Palindrome {
    var inputText: String = ""
    var outputText: String = ""
    
    mutating func palindromeCheck() {
        let input = inputText.components(separatedBy: .whitespacesAndNewlines).joined().lowercased()
        let reversed = input.index(input.endIndex, offsetBy: -1)
        
        if input[input.startIndex] == input[reversed] {
            return outputText = "Palindrome"
        } else {
            return outputText = "Not a Palindrome"
        }
    }
}

//
//  PalindromeViewModel.swift
//  Palindrome Checker
//
//  Created by Jundana Al-Basyir on 17/09/21.
//

import Foundation
import SwiftUI

class PalindromeViewModel: ObservableObject {
    @Published private var palindrome: Palindrome = Palindrome()
    
    var input: String {
        get { palindrome.inputText }
        set { palindrome.inputText = newValue }
    }
    
    var output: String {
        palindrome.outputText
    }
    
    func isPalindrome() {
        palindrome.palindromeCheck()
    }
}

//
//  HomeView.swift
//  Palindrome Checker
//
//  Created by Jundana Al-Basyir on 17/09/21.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var PalindromeVM = PalindromeViewModel()
    
    init() {
        PalindromeVM = PalindromeViewModel()
    }
    
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            
            VStack {
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack {
                        Spacer()
                        
                        Text("Palindrome Checker")
                            .font(.system(size: 27, weight: .black))
                            .padding(.vertical)
                            .foregroundColor(.white)
                        
                        TextEditor(text: $PalindromeVM.input)
                            .font(.title)
                            .frame(width: .infinity, height: 350)
                            .disableAutocorrection(true)
                            .cornerRadius(10)
                        
                        Button(action: {
                            self.PalindromeVM.isPalindrome()
                        }, label: {
                            Spacer()
                            Text("Check Palindrome")
                                .foregroundColor(Color(.black))
                                .font(.system(size: 17, weight: .semibold))
                            Spacer()
                        })
                        .padding()
                        .background(Color(.green))
                        .cornerRadius(10)
                        .padding(.vertical)
                        
                        Text("\(PalindromeVM.output)")
                            .padding(.all)
                            .foregroundColor(.white)
                            .font(.system(size: 21, weight: .bold))
                        
                        Spacer()
                    }
                    .padding(.horizontal, 15)
                })
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

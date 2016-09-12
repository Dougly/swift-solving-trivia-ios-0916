//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    func solveTrivia (dictionary: [String : String]) -> String {
        
        //variable to save the answer
        var answer = ""
        
        for (state, capital) in dictionary {
            
            //divide state and capital into arrays containing each letter
            let stateCharacterArray = Array(state.lowercaseString.characters)
            let capitalCharaterArray = Array(capital.lowercaseString.characters)
            
            //vaiable to break the loop if matching letters are found
            //and also find the state with no matching letters
            var hasMatchingLetters = false
            
            //compares each letter in state to each letter in capital
            for stateLetter in stateCharacterArray {
                if !hasMatchingLetters {
                    for capitalLetter in capitalCharaterArray {
                        if stateLetter == capitalLetter {
                            hasMatchingLetters = true
                            break
                        }
                    }
                } else {
                    break
                }
            }
            
            //if loop reaches this point without finiding matching letters it
            //saves the answer
            if !hasMatchingLetters {
                answer = state
            }
        }
        return answer
    }


    
}
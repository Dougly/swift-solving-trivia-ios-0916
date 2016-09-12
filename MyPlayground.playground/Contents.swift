//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func solveTrivia (dictionary: [String : String]) -> String {
    
    var answer = ""
    
    for (state, capital) in dictionary {
        let stateCharacterArray = Array(state.lowercaseString.characters)
        let capitalCharaterArray = Array(capital.lowercaseString.characters)
        print (stateCharacterArray + capitalCharaterArray)
        
        var hasMatchingLetters = false
        
        for stateLetter in stateCharacterArray {
            if !hasMatchingLetters {
                for capitalLetter in capitalCharaterArray {
                    print("comparing \(stateLetter) and \(capitalLetter)")
                    if stateLetter == capitalLetter {
                        hasMatchingLetters = true
                        print ("***FOUND MATCHING LETTERS***")
                        break
                    }
                }
            } else {
                break
            }
            
        }
        
        if !hasMatchingLetters {
            answer = state
        }
    }
    return answer
}


let testDictionary = [
    "Alabama":"Montgomery",
    "Alaska":"Juneau",
    "Arizona":"Phoenix",
    "Arkansas":"Little Rock",
    "California":"Sacramento",
    "Colorado":"Denver",
    "Connecticut":"Hartford",
    "Delaware":"Dover",
    "Florida":"Tallahassee",
    "Georgia":"Atlanta",
    "Hawaii":"Honolulu",
    "Idaho":"Boise",
    "Illinois":"Springfield",
    "Indiana":"Indianapolis",
    "Iowa":"Des Moines",
    "Kansas":"Topeka",
    "Kentucky":"Frankfort",
    "Lousiana":"Baton Rouge",
    "Maine":"Augusta",
    "Maryland":"Annapolis",
    "Massassachusetts":"Boston",
    "Michigan":"Lansing",
    "Minnesota":"Saint Paul",
    "Mississippi":"Jackson",
    "Missouri":"Jefferson City",
    "Montana":"Helena",
    "Nebraska":"Lincoln",
    "Nevada":"Carson City",
    "New Hampshire":"Concord",
    "New Jersey":"Trenton",
    "New Mexico":"Santa Fe",
    "New York":"Albany",
    "North Carolina":"Raleigh",
    "North Dakota":"Bismarck",
    "Ohio":"Columbus",
    "Oklahoma":"Oklahoma City",
    "Oregon":"Salem",
    "Pennsylvania":"Harrisburg",
    "Rhode Island":"Providence",
    "South Carolina":"Columbia",
    "South Dakota":"Pierre",
    "Tennessee":"Nashville",
    "Texas":"Austin",
    "Utah":"Salt Lake City",
    "Vermont":"Montpelier",
    "Virgina":"Richmond",
    "Washington":"Olympia",
    "West Virginia":"Charleston",
    "Wisconsin":"Madison",
    "Wyoming":"Cheyenne"]


solveTrivia(testDictionary)


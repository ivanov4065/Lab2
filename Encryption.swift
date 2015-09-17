//
//  Encryption.swift
//  lab2
//
//  Created by Roman Ivaniv on 20.05.15.
//  Copyright (c) 2015 Roman Ivaniv. All rights reserved.
//

import Foundation
import UIKit

class Encryption : UIViewController {
    
    func encrypt(input: NSString) -> String {
        var gammaArray = Array(count: input.length , repeatedValue: 0)
        gammaArray[0] = 7
        var a = 5
        var c = 3
        var b = 7
        var m = 32
        var result: Int
        func gamma(param: Int) -> Int {
            return (a * param + c) % m
        }
        for n in 1..<input.length {
            gammaArray[n] = gamma(gammaArray[n-1])
        }
        
        var output = ""
        var charIndex: Int
        if (input.length == 0) {
            return ""
        }
        for i in 0..<input.length {
            charIndex = Int(input.characterAtIndex(i))
            result = charIndex ^ gammaArray[i]
            output.append(Character(UnicodeScalar(result)))
        }
        
        return output
        
    }

    
    
}

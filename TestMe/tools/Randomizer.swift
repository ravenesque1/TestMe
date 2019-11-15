//
//  Randomizer.swift
//  TestMe
//
//  Created by Raven Weitzel on 11/15/19.
//  Copyright © 2019 Raven Weitzel. All rights reserved.
//

import Foundation

class Randomizer {
    
    static func randomString(length: Int = 30) -> String {
        let strLength = arc4random_uniform(UInt32(length))
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<strLength).map{ _ in letters.randomElement()! })
    }
}

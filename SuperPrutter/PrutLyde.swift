//
//  PrutLyde.swift
//  SuperPrutter
//
//  Created by Daniel Lambrecht on 08/10/2017.
//  Copyright © 2017 Asger Mathiasen. All rights reserved.
//

import Foundation

class Fart {
    let name: String
    let sound: URL
    
    init(name: String, sound: URL) {
        self.name = name
        self.sound = sound
    }
}


let fart1 = Fart(name: "prut1", sound: Bundle.main.url(forResource: "fart", withExtension: "wav")!)
let fart2 = Fart(name: "prut2", sound: Bundle.main.url(forResource: "fartt", withExtension: "wav")!)






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
    let smell: String
    
    let emoji: String
    
    init(name: String, sound: URL, smell: String, emoji: String) {
        self.name = name
        self.sound = sound
        self.smell = smell
        self.emoji = emoji
    }
}


let fart1 = Fart(name: "Peanutbutter & Jelly", sound: Bundle.main.url(forResource: "fart", withExtension: "wav")!, smell: "Nasty with some peanutbutter", emoji: "🥜")
let fart2 = Fart(name: "A fart from heaven", sound: Bundle.main.url(forResource: "fartt", withExtension: "wav")!, smell: "i kind of wanna keep smelling this", emoji: "💨")






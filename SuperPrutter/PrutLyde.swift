//
//  PrutLyde.swift
//  SuperPrutter
//
//  Created by Daniel Lambrecht on 08/10/2017.
//  Copyright © 2017 Asger Mathiasen. All rights reserved.
//
import UIKit
import Foundation

class Fart {
    let name: String
    let sound: URL
    let smell: String
    
    let profilepic: UIImage
    let background: UIImage
    
    init(name: String, sound: URL, smell: String, profilepic: UIImage, background: UIImage) {
        self.name = name
        self.sound = sound
        self.smell = smell
        self.profilepic = profilepic
        self.background = background
    }
}


let fart1 = Fart(name: "Peanutbutter & Jelly", sound: Bundle.main.url(forResource: "fart", withExtension: "wav")!, smell: "Nasty with some peanutbutter", profilepic: #imageLiteral(resourceName: "Fie_Laursen"), background: #imageLiteral(resourceName: "Fie_Laursen"))





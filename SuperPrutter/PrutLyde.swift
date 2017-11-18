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


let fieLaursen = Fart(name: "Fie Laursen", sound: Bundle.main.url(forResource: "Fielaursen", withExtension: "wav")!, smell: "Rådden æg", profilepic: #imageLiteral(resourceName: "Fie-PB"), background: #imageLiteral(resourceName: "Fie_Laursen"))

let alex = Fart(name: "Alexander Husum", sound: Bundle.main.url(forResource: "AlexanderHusum", withExtension: "wav")!, smell: "Nasty with some peanutbutter", profilepic: #imageLiteral(resourceName: "alexander-PB"), background: #imageLiteral(resourceName: "Alexsander-BG"))

let julia = Fart(name: "Julia Sofia", sound: Bundle.main.url(forResource: "JuliaSofia", withExtension: "wav")!, smell: "mhmm", profilepic: #imageLiteral(resourceName: "julia-pb"), background: #imageLiteral(resourceName: "julia-BG"))

let rasmus = Fart(name: "Rasmus Brohave", sound: Bundle.main.url(forResource: "Rasmusbrohave", withExtension: "wav")!, smell: "danm boy", profilepic: #imageLiteral(resourceName: "Rasmus-PB"), background: #imageLiteral(resourceName: "Rasmus-BG"))

let astrid = Fart(name: "Astrid Olsen", sound: Bundle.main.url(forResource: "AstridOlsen", withExtension: "wav")!, smell: "astridsrøv", profilepic: #imageLiteral(resourceName: "Astrid-PB"), background: #imageLiteral(resourceName: "Astrid-BG"))

let albert = Fart(name: "Albert Dyrlund", sound: Bundle.main.url(forResource: "AlbertDyrlund", withExtension: "wav")!, smell: "albert lugter som en emoji", profilepic: #imageLiteral(resourceName: "Albert-PB"), background: #imageLiteral(resourceName: "Albert-BG"))

let ida = Fart(name: "Ida Imilia", sound: Bundle.main.url(forResource: "IdaImilia", withExtension: "wav")!, smell: "ida", profilepic: #imageLiteral(resourceName: "Ida-PB"), background: #imageLiteral(resourceName: "Ida-BG"))

let boris = Fart(name: "Boris Laursen", sound: Bundle.main.url(forResource: "BorisLaursen", withExtension: "wav")!, smell: "Slingshot muthafuckaaaaa", profilepic: #imageLiteral(resourceName: "boris-PB"), background: #imageLiteral(resourceName: "boris-BG"))

let louise = Fart(name: "Louise Madsen", sound: Bundle.main.url(forResource: "LouiseMadsen", withExtension: "wav")!, smell: "madserbasser", profilepic: #imageLiteral(resourceName: "Louise-PB"), background: #imageLiteral(resourceName: "Louise-BG"))

let lakserytteren = Fart(name: "Lakserytteren", sound: Bundle.main.url(forResource: "Lakserytteren", withExtension: "wav")!, smell: "laks", profilepic: #imageLiteral(resourceName: "lakserytteren-PB"), background: #imageLiteral(resourceName: "lakserytteren-BG"))

let emilie = Fart(name: "Emilie Briting", sound: Bundle.main.url(forResource: "emilieBriting", withExtension: "wav")!, smell: "British ass", profilepic: #imageLiteral(resourceName: "emilie-PB"), background: #imageLiteral(resourceName: "emilie-BG"))



























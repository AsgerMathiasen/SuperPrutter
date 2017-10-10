//
//  ViewController.swift
//  SuperPrutter
//
//  Created by Asger Mathiasen on 08/10/2017.
//  Copyright © 2017 Asger Mathiasen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let prutter = [fart1,fart2]
    
    var selectedFart: Fart = fart1
    

    
    // Prutter Sound Player
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    //MARK:- PLAY SOUND
    func playSound() {
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: selectedFart.sound)
            guard let player = player else { return }
            
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    @IBAction func prutteKnapTrykket(_ sender: Any) {
        playSound()
    }
    
}


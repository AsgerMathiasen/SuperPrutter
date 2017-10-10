//
//  ViewController.swift
//  SuperPrutter
//
//  Created by Asger Mathiasen on 08/10/2017.
//  Copyright © 2017 Asger Mathiasen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    // Top labels og button
    
    @IBOutlet weak var prutNavneLabel: UILabel!
    @IBOutlet weak var PrutEmojiLabel: UILabel!
    @IBOutlet weak var prutteKnap: UIButton!
    
    
    
    let prutter = [fart1,fart2]
    var selectedFart: Fart = fart2
    

    
    // Prutter Sound Player
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prutNavneLabel.text = selectedFart.name
        PrutEmojiLabel.text = selectedFart.emoji
        
        
        
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


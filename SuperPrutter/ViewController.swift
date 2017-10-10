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
    
    @IBOutlet weak var prutteTableNavn: UILabel!
    @IBOutlet weak var prutteTableLugt: UILabel!
    @IBOutlet weak var tableEmoji: UILabel!
    
    let prutter = [fart1,fart2]
    var selectedFart: Fart = fart2
    

    
    // Prutter Sound Player
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prutter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentFart = prutter[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "prutteCell") as! TableViewCell
        
        cell.Emoji.text = currentFart.emoji
        cell.navn.text = currentFart.name
        cell.lugt.text = currentFart.smell
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedFart = prutter[indexPath.row]
        
        prutNavneLabel.text = selectedFart.name
        PrutEmojiLabel.text = selectedFart.emoji
        
    }
    
    
    @IBAction func prutteKnapTrykket(_ sender: Any) {
        playSound()
    }
    
}


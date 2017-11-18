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
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    let prutter = [fieLaursen, alex, julia, rasmus, astrid, albert, ida, boris, louise, lakserytteren, emilie]
    var selectedFart: Fart = fieLaursen
    

    
    // Prutter Sound Player
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = selectedFart.background
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
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
        
        
        cell.navn.text = "\(currentFart.name)"
        cell.lugt.text = "Lugt: \(currentFart.smell)"
        cell.profilePic.image = currentFart.profilepic
        cell.profilePic.layer.masksToBounds = true
        cell.profilePic.layer.cornerRadius = cell.profilePic.frame.height / 2.0
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedFart = prutter[indexPath.row]
        
        
        backgroundImage.image = selectedFart.background
        
        
    }
    
    
    @IBAction func prutteKnapTrykket(_ sender: Any) {
        playSound()
    }
    
}


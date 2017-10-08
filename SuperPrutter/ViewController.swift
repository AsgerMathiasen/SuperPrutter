//
//  ViewController.swift
//  SuperPrutter
//
//  Created by Asger Mathiasen on 08/10/2017.
//  Copyright © 2017 Asger Mathiasen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let prutter = [fart1,fart2]
    
    var selectedFart: Fart = fart1
    
    @IBOutlet weak var prutteKnap: UIButton!
    @IBOutlet weak var pruttePicker: UIPickerView!
    @IBOutlet weak var prutteLabel: UILabel!
    
    // Prutter Sound Player
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 /*
    // Prutter Sound Player
        let path = Bundle.main.url(forResource: "fart", withExtension: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try prutteLyd = AVAudioPlayer(contentsOf: soundURL)
            prutteLyd.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
*/
        
        pruttePicker.dataSource = self
        pruttePicker.delegate = self
        
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return prutter.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return prutter[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        prutteLabel.text = prutter[row].name
        selectedFart = prutter[row]
    }

    @IBAction func prutteKnapTrykket(_ sender: Any) {
        playSound()
    }
    
}


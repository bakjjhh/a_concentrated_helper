//
//  ViewController.swift
//  a_concentrated_helper
//
//  Created by ALOM on 2022/12/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    let drumButton = drumMusicModel()
    let musicButton = muiscPlayModel()

  

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    
    

    @IBAction func muiscPlayButton(_ sender: UIButton) {
        musicButton.playSound()
        musicButton.timer()
        drumButton.timer()

        
    
    }
    
}
    
    
    
    
    

    




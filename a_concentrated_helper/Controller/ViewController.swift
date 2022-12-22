//
//  ViewController.swift
//  a_concentrated_helper
//
//  Created by ALOM on 2022/12/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
  

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    
    

    @IBAction func muiscPlayButton(_ sender: UIButton) {
        muiscPlayModel.playList()
    
    }
    
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "1", withExtension: "wav") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)

                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                print(url)

                /* iOS 10 and earlier require the following line:
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

                guard let player = player else { return }

                player.play()

            } catch let error {
                print(error.localizedDescription)
            }
    
    

    }
}
    
    
    

    




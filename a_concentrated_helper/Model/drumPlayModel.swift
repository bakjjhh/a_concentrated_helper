//
//  drumPlayModel.swift
//  a_concentrated_helper
//
//  Created by ALOM on 2023/01/01.
//

import Foundation
import AVFoundation

class drumMusicModel {
    
    var player: AVAudioPlayer?
    
    var drumtrackList = 1
    var playButtonNumber = -1
    
    var drumLoopNumberSecond = 0
    
    func randomNumber() {
       var randomList = arc4random_uniform(3) + 1
        drumtrackList = 0
        drumtrackList += Int(randomList)
    }
    
    func timer() {
        Timer.scheduledTimer(timeInterval: 1 , target: self, selector: #selector(drumcountTimer), userInfo: nil, repeats: true)
         }
     
     @objc func drumcountTimer() {
         drumLoopNumberSecond += 1
         if drumLoopNumberSecond == 6 {
            playButtonNumber = -1
             playSound()
         }
         if drumLoopNumberSecond == 48 {
             drumLoopNumberSecond = 0
             //stopSound()
         }
         if drumtrackList == 4 {
             drumtrackList = 1
         }
         
         print(drumLoopNumberSecond)
         print(drumtrackList)
     }
    
    
    
    
    func playSound() {
        randomNumber()
        guard let url = Bundle.main.url(forResource: "drum\(drumtrackList)", withExtension: "wav") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)

                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

                guard let player = player else { return }
                player.numberOfLoops = playButtonNumber
                player.play()

            } catch let error {
                print(error.localizedDescription)
            }
       
        
    }
 
    
    
    func stopSound() {
        player?.stop()
    }
    
}

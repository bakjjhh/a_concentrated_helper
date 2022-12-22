//
//  muiscPlayModel.swift
//  a_concentrated_helper
//
//  Created by ALOM on 2022/12/21.
//

import Foundation
import AVFoundation


struct muiscPlayModel {
    
    var player: AVAudioPlayer?
    
    mutating func playSound(list:Int) {
            guard let url = Bundle.main.url(forResource: String(list), withExtension: "wav") else { return }

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

//
//  muiscPlayModel.swift
//  a_concentrated_helper
//
//  Created by ALOM on 2022/12/21.
//

import Foundation


struct muiscPlayModel {
    
    var listNumber = 1
    
    mutating func playList(){
        if listNumber <= 3 {
            self.listNumber += 1
        }else {
            self.listNumber = 0
        }
        
    }
        
       
        
    
    


    
    
    
    
}
